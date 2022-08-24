package com.koreate.betty.domain.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/boards/notice")
public class NoticeBoardController {

	@GetMapping
	public String noticeBoardList() {
		return "board/notice/notice-board";
	}
	
	@GetMapping("new")
	public String noticeBoardNew() {
		return "board/notice/notice-new";
	}
	
	//pathvariable
	@GetMapping("{bno}")
	public String noticeBoardDetail() {
		return "board/notice/notice-detail";
	}

	//pathvariable
	@GetMapping("{bno}/edit")
	public String noticeBoardEdit() {
		return "board/notice/notice-edit";
	}
	
}
