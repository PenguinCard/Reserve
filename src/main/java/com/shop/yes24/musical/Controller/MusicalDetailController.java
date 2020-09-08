package com.shop.yes24.musical.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.musical.DAO.MusicalDetailDAO;
import com.shop.yes24.musical.DTO.MusicalDetailDTO;

@Controller
public class MusicalDetailController {
	
	@Autowired
	MusicalDetailDAO dao;
	
	@RequestMapping(value="/musical/MusicalDetail", method=RequestMethod.GET)
	public ModelAndView selectall(@RequestParam("musical_detail_id") int musical_detail_id, @RequestParam("musical_detail_image_id") int musical_detail_image_id, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView("/musical/MusicalDetail");
		HttpSession session = request.getSession();
		MusicalDetailDTO dto = new MusicalDetailDTO();
		dto.setMusical_detail_id(musical_detail_id);
		dto.setMusical_detail_image_id(musical_detail_image_id);
		MusicalDetailDTO all = dao.selectall(dto);
		MusicalDetailDTO main = dao.selectmainimg(dto);
		List<MusicalDetailDTO> notice = dao.selectnoticeimg(dto);
		List<MusicalDetailDTO> discount = dao.selectdiscountimg(dto);
		List<MusicalDetailDTO> info = dao.selectinfoimg(dto);
		List<MusicalDetailDTO> cast = dao.selectcastimg(dto);
		
		
//		mav.addObject("all", all);
//		mav.addObject("main", main);
		mav.addObject("notice", notice);
		mav.addObject("discount", discount);
		mav.addObject("info", info);
		mav.addObject("cast", cast);
		
		session.setAttribute("all", all);
		session.setAttribute("main", main);
		session.setAttribute("genre", "musical");
		
		
		
		return mav;
	}
	
}