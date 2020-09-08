package com.shop.yes24.sub.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.sub.DAO.SubImageDAO;

@Controller
public class SubController {
	
	@Autowired
	SubImageDAO dao;
	
	
	@RequestMapping("/sub/sub1")
	public ModelAndView sub1() {
		String genre="musical";
		ModelAndView mav=new ModelAndView("/sub/subpage1");
		mav.addObject("slides", dao.selectSubSlideImage(genre));
		mav.addObject("weeklies", dao.selectWeeklyImage(genre));
		mav.addObject("locals", dao.selectLocalImage(genre));
		mav.addObject("picks", dao.selectPickImage(genre));
		mav.addObject("banners", dao.selectBannerImage(genre));
		return mav;
	}
	
	@RequestMapping("/sub/sub2")
	public ModelAndView sub2() {
		String genre="concert";
		ModelAndView mav=new ModelAndView("/sub/subpage2");
		mav.addObject("slides", dao.selectSubSlideImage(genre));
		mav.addObject("weeklies", dao.selectWeeklyImage(genre));
		mav.addObject("locals", dao.selectLocalImage(genre));
		mav.addObject("picks", dao.selectPickImage(genre));
		mav.addObject("banners", dao.selectBannerImage(genre));
		return mav;
	}
}
