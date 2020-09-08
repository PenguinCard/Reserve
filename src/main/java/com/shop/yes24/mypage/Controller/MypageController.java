package com.shop.yes24.mypage.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.member.DTO.MemberDTO;
import com.shop.yes24.mypage.DAO.MypageDAO;

@Controller
public class MypageController {
	
	@Autowired
	MypageDAO DAO;
	
	@RequestMapping("/mypage")
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("mypage/Mypage");
		HttpSession sess = request.getSession();
		MemberDTO dto=(MemberDTO)sess.getAttribute("memberInfo");
		mav.addObject("id", dto.getMem_id());
		
		return mav;
	}
	
	@RequestMapping(value="/mypage/modify.do", method=RequestMethod.POST)
	public ModelAndView updateMyInfo(MemberDTO dto,HttpServletRequest request) {
		HttpSession sess = request.getSession();
		MemberDTO dto2 = (MemberDTO)sess.getAttribute("memberInfo");
		dto2.setMem_phone1(dto.getMem_phone1());
		dto2.setMem_phone2(dto.getMem_phone2());
		dto2.setMem_phone3(dto.getMem_phone3());
		dto2.setMem_email1(dto.getMem_email1());
		dto2.setMem_email2(dto.getMem_email2());
		dto2.setMem_name(dto.getMem_name());
		DAO.updateMyInfo(dto2);		
		
		ModelAndView mav = new ModelAndView("redirect:/main/main.do");
		
		return mav;
	}
	 
	
	
	

}
