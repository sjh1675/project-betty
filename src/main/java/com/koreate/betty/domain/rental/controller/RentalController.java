package com.koreate.betty.domain.rental.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.koreate.betty.domain.book.dto.form.BookSearchForm;
import com.koreate.betty.domain.book.service.BookService;
import com.koreate.betty.domain.rental.service.RentalService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/rentals")
@RequiredArgsConstructor
public class RentalController {
	
	@Autowired
	BookService bs;
	
	@Autowired
	RentalService rs;
	
	@GetMapping
	@ResponseBody
	public Map<String, Object> rentalList(BookSearchForm form, Integer page) {
		Map<String, Object> map = bs.rentalBookSearch(form, page);
		return map;
	}
	
	@PostMapping		// 기존 예약 페이지를 대여 페이지로 하였음
	public String rental(String memberId, String isbn) {
		Integer num = bs.findExistNum(isbn);
		if (num == null) {
			// provider에서 Integer 반환이 가능하고
			// 아무값이 넘어오지 않았다면 대여 가능한 책이 없으니 예외처리 필요함
			return "redirect:/"; // 일단 홈으로
		}
		int result = rs.rentalBook(memberId, isbn, num);
		return "redirect:/books/" + isbn;
	}
	
	@PostMapping("reserve")		// 예약을 /rentals/reserve로 하였음
	public String reserve(String memberId, String isbn, String date) {
		Integer num = bs.findExistNum(isbn);
		if (num == null) {
			// provider에서 Integer 반환이 가능하고
			// 아무값이 넘어오지 않았다면 예약 가능한 책이 없으니 예외처리 필요함
			return "redirect:/"; // 일단 홈으로
		}
		int result = rs.reserveBook(memberId, isbn, date, num);
		return "redirect:/books/" + isbn;
	}
		
}