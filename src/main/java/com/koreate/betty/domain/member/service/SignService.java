package com.koreate.betty.domain.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.koreate.betty.domain.member.dao.SignRepository;
import com.koreate.betty.domain.member.dto.form.SignInForm;
import com.koreate.betty.domain.member.dto.form.SignUpForm;
import com.koreate.betty.domain.member.exception.NotFoundIdException;
import com.koreate.betty.domain.member.vo.Member;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class SignService {

	@Autowired SignRepository signRepository;
	
	// 회원가입
	public int signUp(SignUpForm form) {
		int result = 0;
		
		String pw = form.getPw();
		String repw = form.getRepw();
		
		if (!pw.equals(repw)) {
			return result;
		}
		
		Member member = form.convertToMember();
				
		result = signRepository.create(member);
		return result;
	}
	
	// 로그인
	public Member SignIn(SignInForm form) {
		Member member = form.convertToMember();
		boolean cookie = form.isLoginCookie();
		
		member = signRepository.findOneBySignIn(member);
		
		// cookie true or null
		
		if (cookie) {
			log.info("쿠키에 사용자 정보 넣기");
		}
		return member;
	}
	
	
	// 아이디 중복 체크
	public boolean checkIdDupl(String id) {
		return isDupl(signRepository.findIdById(id));
	}
	
	// 닉네임 중복 체크
	public boolean checkNicknameDupl(String nick) {
		return isDupl(signRepository.findNicknameByNickname(nick));
	}
	
	// 이메일 중복 체크
	public boolean checkEmailDupl(String email) {
		return isDupl(signRepository.findEmailByEmail(email));
	}
	
	// 아이디 찾기
	public String forgetId(String name, String phone) {
		String id = signRepository.findIdByForget(name, phone);
		
		if(id == null) { 
			throw new NotFoundIdException(); 
		}
		
		return generateForgetCode();
	}
	
	// 비밀번호 찾기
	public int forgetPw(String id, String phone) {
		return signRepository.findPwByForget(id, phone);
	}
	
	// 중복 검사 결과
	private boolean isDupl(String target) {
		return target != null ? true : false;
	}
	
	private String generateForgetCode() {
		String code = "";
		for (int i = 0; i < 5; i++) {
			code += (int) (Math.random() * 10);
		}
		return code;
	}
}