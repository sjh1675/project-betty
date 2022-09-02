package com.koreate.betty.domain.book.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class NotFoundISBNException extends RuntimeException{

	public NotFoundISBNException() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NotFoundISBNException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
		// TODO Auto-generated constructor stub
	}

	public NotFoundISBNException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public NotFoundISBNException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public NotFoundISBNException(Throwable cause) {
		super(cause);
		// TODO Auto-generated constructor stub
	}

	
	
}
