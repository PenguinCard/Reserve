package com.shop.yes24.member.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.member.DAO.LoginDAO;
import com.shop.yes24.member.DTO.MemberDTO;

@Controller
public class LoginController {

	@Autowired
	LoginDAO dao;

	@RequestMapping(value="/member/Login",method={RequestMethod.POST,RequestMethod.GET} )
	public ModelAndView selectid() {
		ModelAndView mav = new ModelAndView("/member/Login");
		//MemberDTO dto = new MemberDTO();
		//System.out.println(dao.selectid((dto)).toString());

		return mav;
	}

	@RequestMapping(value = "/member/login.do", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView selectsubject(@RequestParam("userid") String id, @RequestParam("userpw") String pw,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		MemberDTO logdto = new MemberDTO();
		logdto.setMem_id(id);
		logdto.setMem_pw(pw); //id,pw값 dto에 세팅
		MemberDTO allinfo = dao.selectid_pw(logdto);//sql에 param에서 받은 id,pw 넣어 돌린 결과값 allinfo에 저장 
		

		// 세션 검사 후 로그인한 회원정보 memberInfo에 저장 , allinfo로 if 돌리기
		if (allinfo != null && allinfo.getMem_id() != null) {
			HttpSession session = request.getSession();
			// session = request.getSession();
			
			session.setAttribute("isLogOn", true);
			session.setAttribute("memberInfo", allinfo);
			System.out.println("session에 저장한 값"+allinfo.toString());

		}
		
		//로그인 실패,성공if절
        //logdto는 param에서 받은 id,pw 세팅된 dto
		if (allinfo == null || allinfo.toString() == "") {
			mav.addObject("result", "loginFailed");
			mav.setViewName("/member/Login");
		} else {
			mav.setViewName("redirect:/main/main.do");
		}

		return mav;
	}

//	@RequestMapping("/sessiontest")
//	public ModelAndView sessiontest(@RequestParam("userid") String id, @RequestParam("userpw") String pw, HttpServletRequest request) {
//		
//		ModelAndView mav = new ModelAndView("sessiontest");
//		MemberDTO logdto = new MemberDTO();
//		//MemberDTO iddto = new MemberDTO(); 
//		logdto.setMem_id(id);
//		logdto.setMem_pw(pw);
//		logdto = dao.selectid_pw(logdto);
//		
//		if(logdto != null && logdto.getMem_id() != null) {
//			HttpSession session = request.getSession();
//			//session = request.getSession();
//			System.out.println(logdto.toString());
//			session.setAttribute("isLogOn", true);
//			session.setAttribute("memberInfo", logdto);
//		}
//		
//		return mav;
//	}
//	
	@RequestMapping(value = "/logout.do", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/main/main.do");
		HttpSession session = request.getSession();
		session.setAttribute("isLogOn", false);
		session.removeAttribute("memberInfo"); //세션에 저장된 회원 정보 제거
		return mav;

	}

}


