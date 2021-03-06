package com.tj.bookup.service;

import javax.servlet.http.HttpSession;

import com.tj.bookup.model.Member;

public interface MemberService {
	public int idConfirm(String mid);
	public int joinMember(Member member);
	public Member getMember(String mid);
	public String loginCheck(String mid, String mpw, HttpSession httpSession);
	public int modifyMember(Member member);
}
