package com.shop.yes24.main.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.main.DAO.MainImageDAO;
import com.shop.yes24.member.DTO.MemberDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	@Autowired
	MainImageDAO dao;
	
	@RequestMapping(value="/main/main.do", method= {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView main(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("/main/main");
		//세션 받아오기
		HttpSession session = request.getSession();
		MemberDTO logindto = (MemberDTO) session.getAttribute("memberInfo");
		//System.out.println("session에서 가져온 값"+logindto.toString());
		
		mav.addObject("slideList", dao.selectSlide());
		mav.addObject("thumbList", dao.selectThumb());
		mav.addObject("hotList1", dao.selectHots1());
		mav.addObject("hotList2", dao.selectHots2());
		mav.addObject("rankList", dao.selectRank());
		mav.addObject("rankList2", dao.selectRank2());
		mav.addObject("rankList3", dao.selectRank3());
		mav.addObject("rankList4", dao.selectRank4());
		mav.addObject("rankList5", dao.selectRank5());
		mav.addObject("musicPlayList", dao.selectMusicPlay());
		mav.addObject("concertClassicList", dao.selectConcertClassic());
		return mav;
	}
}
