package com.koreate.betty.domain.book.vo;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class BookComment {
	private final Integer num;
	private final String bookCode;
	private final String memberId;
	private final String nickname;
	private final String comment;
	private final String showcomment;
	
}
