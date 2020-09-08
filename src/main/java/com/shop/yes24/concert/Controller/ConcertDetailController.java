package com.shop.yes24.concert.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.concert.DAO.ConcertDetailDAO;
import com.shop.yes24.concert.DTO.ConcertDetailDTO;

@Controller
public class ConcertDetailController {

	@Autowired
	ConcertDetailDAO dao;
	
	@RequestMapping(value="/concert/ConcertDetail", method=RequestMethod.GET)
	public ModelAndView selectsubject(@RequestParam("con_detail_id") int con_detail_id, @RequestParam("con_detail_imagelist_id") int con_detail_imagelist_id, HttpServletRequest request) throws Exception {

		
		ModelAndView mav = new ModelAndView("/concert/ConcertDetail");
		HttpSession session = request.getSession();
		
		ConcertDetailDTO dto = new ConcertDetailDTO();
		dto.setCon_detail_id(con_detail_id);
		dto.setCon_detail_imagelist_id(con_detail_imagelist_id);
		//String subject = dao.selectsubject(dto); //속성 1개 검색 시
		ConcertDetailDTO all =dao.selectall(dto);
		List<ConcertDetailDTO> info = dao.selectimageinfo(dto);
		ConcertDetailDTO main = dao.selectimagemain(dto);
		ConcertDetailDTO genre = dao.selectgenre(dto);
//		System.out.println(selectgenre);
		//mav.addObject("subject", subject);
//		mav.addObject("all", all);
//		//mav.addObject("images", images);
//		mav.addObject("info", info);
//		mav.addObject("main", main);
//		mav.addObject("genre", genre.getGenre());
		session.setAttribute("all", all);
		session.setAttribute("info", info);
		session.setAttribute("main", main);
		session.setAttribute("genre",  genre.getGenre());
		
		return mav;
	}
	
	
	
	

}
