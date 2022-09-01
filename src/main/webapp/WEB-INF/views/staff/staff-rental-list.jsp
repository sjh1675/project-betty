
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp"%>

<section>
	<div class="container-md spad">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="product__page__title">
					<div class="row">
						<div class="col-md-8 col-md-8 col-md-6 title__align__center">
							<div class="section-title">
								<h4>대여 현황</h4>
							</div>
						</div>
					</div>
				</div>


				<form>
					<table class="table table-borderless table-dark mb-5">
						<tbody>
							<!-- 1행 -->
							<tr>
								<th scope="row">대여 상태</th>
								<td colspan="2">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<label class="btn btn-secondary active"> <input
											type="radio" name="rental" value="all" checked> 전체
										</label> <label class="btn btn-secondary"> <input type="radio"
											name="rental" value="rent"> 대여중인 도서
										</label> <label class="btn btn-secondary"> <input type="radio"
											name="rental" value="reserv"> 예약중인 도서
										</label>
									</div>
								</td>
								<td></td>
							</tr>
							<!-- 2행 -->
							<tr>
								<th scope="row">도서 발행일 별</th>
								<td colspan="3">
									<div class="input-group text-secondary">
										<input type="date" id="pubDate" name="pubDate"
											style="height: 37px" />
										<div class="input-group-append">
											<select id="pubDateOption">
												<option value="before">-이전</option>
												<option value="after">-이후</option>
											</select>
										</div>
									</div>
								</td>
							</tr>
							<!-- 3행 -->
							<tr>
								<th scope="row">검색</th>
								<td>
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<select id="searchType">
												<option value="">키워드 선택</option>
												<option value="title">도서명</option>
												<option value="auth">작가</option>
												<option value="pub">출판사</option>
											</select>
										</div>
										<input type="text" id="searchText" class="form-control"
											style="max-height: 36.5px">
								</td>
								<td></td>
								<td><input class="btn btn-danger" type="submit" value="검색" /></td>
							</tr>
						</tbody>
					</table>					
				</form>



				<!-- table -->
				<h6 id="info">* 책 표지나 테이블 클릭시 해당 도서를 상세보기 할수 있습니다</h6>
				<table id="blackTable"
					class="table-data-list table-striped table-dark text-center">
					
				</table>
				<div class="form-row">
					<ul class="pagination" id="pa">

					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>


<script>
var initBookStr = null;
$(function() {
	ajaxList(null, null, null, null, null, 1);
});

function initData(){
	initBookStr = `<tr>
		<td>번호</td>
		<td>도서명</td>
		<td>ISBN</td>
		<td>대여여부</td>
		<td>대여자</td>
		<td>도서 대여일</td>
		<td>반납 예정일</td>
	</tr>`;
}

$('#submit').on("click", function(e) {
	e.preventDefault();		
	ajaxList(1);
});


function ajaxList(pageNum) {
	let lst = $("#searchText").val();		
	let lso = $("#searchOption").val();		
	let lpd = $("#pubDate").val();
	let lpdo = $("#pubDateOption").val();
	let lro = $("input[type='radio']").val();
		
	$.ajax({
		type : 'get',
		url : "${path}/staff/rentals/cond",
		data : {
			searchText : lst,
			searchOption : lso,
			pubDate : lpd,
			pubDateOption : lpdo,
			rentOption : lro,
			page : pageNum
		},
		dataType : 'json',
		success : function(result) {
			console.log(result.list);
			printList(result.list);
			printPage(result.pm);
		}
	});
}

function printList(list) {
	var i = 1;
	initData();
	$(list)
			.each(
					function() {
						let title = this.title;
						let code = this.code;
						let rental = this.rental;
						let rentalId = this.rentalId;
						let reserveId = this.reserveId;
						let rentalDate = new Date(this.rentalDate);
						let formatRentalDate = rentalDate.getFullYear() + "/"
								+ (rentalDate.getMonth() + 1) + "/"
								+ rentalDate.getDate() + " " + rentalDate.getHours()
								+ ":" + rentalDate.getMinutes() + ":"
								+ rentalDate.getSeconds();//asdfadfssafasdfdsa
						
						let returnDate = new Date(this.returnDate);
						let formatReturnDate = returnDate.getFullYear() + "/"
								+ (returnDate.getMonth() + 1) + "/"
								+ returnDate.getDate() + " " + returnDate.getHours()
								+ ":" + returnDate.getMinutes() + ":"
								+ returnDate.getSeconds();
						
						let reserveDate = new Date(this.reserveDate);
						let formatReserveDate = reserveDate.getFullYear() + "/"
								+ (reserveDate.getMonth() + 1) + "/"
								+ reserveDate.getDate() + " " + reserveDate.getHours()
								+ ":" + reserveDate.getMinutes() + ":"
								+ reserveDate.getSeconds();
								
						initBookStr += `<tr>
							<td>\${i}</td>
							<td>\${title}</td>
							<td>\${code}</td>
							<td>\${rental} </td>`;
						if (rental == 'y') {
							initBookStr += `<td>\${rentalId}</td>
								<td>\${formatRentalDate}</td>
								<td>\${formatReturnDate}</td>`;
						} else if (rental == 'r'){
							initBookStr += `<td>\${reserveId}</td>
								<td>\${formatReserveDate}</td>
								<td> - </td>`;
						} else {
							initBookStr += `<td> - </td>
								<td> - </td>
								<td> - </td>`
						}
						initBookStr += `</tr>`;
						i = i + 1;
					});
	$("#blackTable").html(initBookStr);
}

function printPage(pm) {
	var str = "";
	if (pm.prev) {
		str += "<li><a href='" + (pm.startPage - 1) + "'> << </a></li>";
	}

	for (var i = pm.startPage; i <= pm.endPage; i++) {
		if (pm.cri.page == i) {
			str += "<li><a href='" + i + "' class='active'>" + i
					+ "</a></li>";
		} else {
			str += "<li><a href='" + i + "'>" + i + "</a></li>";
		}
	}

	if (pm.next) {
		str += "<li><a href='" + (pm.endPage + 1) + "'> >> </a></li>";
	}

	$("#pa").html(str);
}

$("#pa").on("click", "li a", function(e) {
	e.preventDefault();
	var commentPage = $(this).attr("href");
	let p = commentPage;
	ajaxList(p);
});

/* 
<!-- 1 -->
					<tr>
						<td>번호</td>
						<td>도서명</td>
						<td>ISBN</td>
						<td>대여여부</td>
						<!-- Y : 대여자,  R : 예약자 , N : none -->
						<td>대여자</td>
						<!-- stat.equals('R') => 예약자 -->
						<td>도서 대여일</td>
						<td>반납 예정일</td>
					</tr>
					<!-- 2 -->
					<tr>
						<td>1</td>
						<td>리 제로1</td>
						<td>123456789098</td>
						<td>R</td>
						<td>김선기</td>
						<td>2022-08-23</td>
						<td>2022-09-15</td>
					</tr>
					<tr>
						<td>2</td>
						<td>리 제로2</td>
						<td>123456789098</td>
						<td>R</td>
						<td>김선기</td>
						<td>2022-08-23</td>
						<td>2022-09-15</td>
					</tr>
					
					initBookStr += `<tr>
						<td>\${i}</td>
						<td>\${title}</td>
						<td>\${code}</td>
						<td>\${rental} </td>						
						<c:choose>
						<c:when test="${rental == 'y'}">							
						<td>\${rentalId}</td>
						<td>\${formatRentalDate}</td>
						<td>\${formatReturnDate}</td>
						</c:when>
						<c:when test="${rental eq 'r'}">
						<td>\${rentalId}</td>
						<td>\${formatReserveDate}</td>
						<td> - </td>
						</c:when>
						<c:otherwise>
						<td> - </td>
						<td> - </td>
						<td> - </td>
						</c:otherwise>
						</c:choose>
					</tr>`;
*/
</script>

