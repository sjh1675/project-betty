<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/include/header.jsp"%>
<style>
#cardText input {
	border: none;
	padding: 2px;
	max-width: 130px;
}

label {
	color: graytext;
}

p {
	text-align: center;
}
</style>
<section>
	<!-- ${path}/resources/img/member/profile_male.png -->

	<div class="container-md spad">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10 spad">

				<!-- row-cols-md-(한줄에 띄울 개수) -->
				<div class="row row-cols-1 row-cols-md-3">
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
									<p class="card-text">
										<small class="text-muted"> 날짜나 정보</small>
									</p>
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<div class="row">
											<label for="val1">이름 : </label> <input type="text" id="val1"
												value="&nbsp;{nameasdf}" readonly>
										</div>
										<div class="row">
											<label for="val1">이름 : </label> <input type="text" id="val1"
												value="&nbsp;{name}" readonly>
										</div>
										<div class="row">
											<label for="val1">이름 : </label> <input type="text" id="val1"
												value="&nbsp;{name}" readonly>
										</div>
										<div class="row">
											<label for="val1">이름 : </label> <input type="text" id="val1"
												value="&nbsp;{name}" readonly>
										</div>

										<!-- <input type="button" value="회원 상세보기" class="follow-btn"> -->
										<!-- button type="button" class="btn btn-outline-secondary">회원 상세</button> -->
										<button type="button" class="btn btn-secondary">회원 상세</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col mb-4">
						<div class="card mb-3 h-120" style="max-width: 350px;">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="${path}/resources/img/member/profile_male.png"
										class="card-img" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body" id="cardText">
										<input type="text" value="{값 예시 1번}"> <input
											type="text" value="{값 예시 2번}"> <input type="text"
											value="{값 예시 3번}"> <input type="text"
											value="{값 예시 4번}"> <input type="text"
											value="{값 예시 5번}">
										<p class="card-text">
											<small class="text-muted">날짜나 정보 등</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>





			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</section>
<%@include file="/WEB-INF/views/include/footer.jsp"%>