package com.shop.yes24.myticket.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.concert.DTO.ConcertDetailDTO;
import com.shop.yes24.member.DTO.MemberDTO;
import com.shop.yes24.musical.DTO.MusicalDetailDTO;
import com.shop.yes24.myticket.DTO.MyticketDTO;
import com.shop.yes24.myticket.Service.MyticketService;
import com.shop.yes24.reservation.DTO.ReservationDTO;
import com.shop.yes24.reservation.Service.ReservationService;

@Controller
public class MyticketController {
	
	@Autowired
	MyticketService service;
	
	@Autowired
	ReservationService reserService;
	
	@RequestMapping("/myticket/Myticket")
	public ModelAndView myTicket(HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView("/myticket/Myticket");
		HttpSession session = request.getSession();
		
		String rowno = (String)session.getAttribute("rowno");
		ReservationDTO reserDto=new ReservationDTO();
		reserDto.setRowno(rowno);
		reserService.updateBooked(reserDto);
		
		MemberDTO mem=(MemberDTO)session.getAttribute("memberInfo");
		String name=mem.getMem_name();
		String day=(String)session.getAttribute("day");
		String genre =(String)session.getAttribute("genre");
		String title="";
		if(genre.equals("musical")) {
			MusicalDetailDTO all = (MusicalDetailDTO)session.getAttribute("all");
			title = all.getMusical_detail_name();
		} else if(genre.equals("concert")) {
			ConcertDetailDTO all=(ConcertDetailDTO)session.getAttribute("all");
			title = all.getCon_detail_name();
		}
		MyticketDTO dto = new MyticketDTO(name, "", 0, title, day, 1, "YES");
		service.insertmyticket(dto);
		mav.addObject("list", service.selectmyticket(dto));
		mav.addObject("name", name);
		return mav;
	}
	
}
