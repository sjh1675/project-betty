package com.koreate.betty.domain.rental.vo;

import java.sql.Timestamp;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class Reserve {
	
	private final String code;
	private final Integer num;
	private final String id;
	private final Timestamp date;

}
