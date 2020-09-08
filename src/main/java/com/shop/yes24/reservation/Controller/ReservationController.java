package com.shop.yes24.reservation.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.concert.DAO.ConcertDetailDAO;
import com.shop.yes24.concert.DTO.ConcertDetailDTO;
import com.shop.yes24.musical.DAO.MusicalDetailDAO;
import com.shop.yes24.musical.DTO.MusicalDetailDTO;
import com.shop.yes24.reservation.DTO.ReservationDTO;
import com.shop.yes24.reservation.Service.ReservationService;

@Controller
public class ReservationController {

	@Autowired
	ConcertDetailDTO concertdetaildto;
	@Autowired
	ConcertDetailDAO concertdetaildao;
	@Autowired
	MusicalDetailDAO musicaldao;
	@Autowired
	MusicalDetailDTO musicaldto;
	@Autowired
	ReservationService service;
	
	
	
	@RequestMapping(value="/reservation/date.do", method=RequestMethod.GET)
	public ModelAndView reservationDate(@RequestParam("detail_id") int detail_id, @RequestParam("genre") String genre, HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView("/reservation/reser");
		HttpSession session = request.getSession();
		
		String[] seatGrade= {"VIP", "R", "S"};
		
		if(genre.equals("musical")) {
			//int musical_detail_id=detail_id;
			musicaldto.setMusical_detail_id(detail_id);
//			System.out.println(musicaldto.getMusical_detail_id());
			musicaldto.setMusical_detail_image_id(detail_id);
//			MusicalDetailDTO all = musicaldao.selectall(musicaldto);
//			MusicalDetailDTO  main = musicaldao.selectmainimg(musicaldto);
//			MusicalDetailDTO selectgenre = musicaldao.selectgenre(musicaldto);
//			mav.addObject("all", all);
//			mav.addObject("main", main);
//			mav.addObject("selectgenre", genre);
			
		} else if(genre.equals("concert")){
			int con_detail_id=detail_id;
			concertdetaildto.setCon_detail_id(con_detail_id);
			System.out.println(con_detail_id);
			System.out.println(concertdetaildto.getCon_detail_id());
			concertdetaildto.setCon_detail_imagelist_id(detail_id);
			ConcertDetailDTO all = concertdetaildao.selectall(concertdetaildto);
			ConcertDetailDTO main = concertdetaildao.selectimagemain(concertdetaildto);
			ConcertDetailDTO selectgenre = concertdetaildao.selectgenre(concertdetaildto);
			mav.addObject("all", all);
			mav.addObject("main", main);
			mav.addObject("selectgenre", genre);
		}
		
		for(String grade : seatGrade) {
			System.out.println(grade + " : " + service.countSeat(grade));
			session.setAttribute(grade, service.countSeat(grade));		
		}
		
	
		return mav;
	}
	
	@RequestMapping("/reservation/seat.do")
	public ModelAndView reservationSeat() throws Exception{
		ModelAndView mav = new ModelAndView("/reservation/seat");
		//HttpSession session = request.getSession();
		mav.addObject("seatList", service.chkBooked());
		
		return mav;
	}
	
	@RequestMapping("/reservation/discount.do")
	public ModelAndView reservationDiscount() {
		ModelAndView mav = new ModelAndView("/reservation/reser_step3");
		
		
		
		
		
		
		
		return mav;
	}
	
	
	@RequestMapping("/reservation/receivemethod.do")
	public ModelAndView reservationReceivemethod(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/reservation/reser_step4");
//		HttpSession session = request.getSession();
//		MemberDTO dto = (MemberDTO) session.getAttribute("memberInfo");
//		String name = dto.getMem_name();
//		String phone1 = dto.getMem_phone1();
//		String phone2 = dto.getMem_phone2();
//		String phone3 = dto.getMem_phone3();
//		String email1 = dto.getMem_email1();
//		String email2 = dto.getMem_email2();
//		
//		mav.addObject("name", name);
//		mav.addObject("phone1", phone1);
//		mav.addObject("phone2", phone2);
//		mav.addObject("phone3", phone3);
//		mav.addObject("email1", email1);
//		mav.addObject("email2", email2);
//		
		return mav;
	}
	
	@RequestMapping("/reservation/payment.do")
	public ModelAndView reservationPayment() {
		ModelAndView mav = new ModelAndView("/reservation/reser_step5");
		
		return mav;
	}
	
	@RequestMapping(value="/reservation/datechk", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reserveDate(@RequestBody ReservationDTO dto, HttpServletRequest request) {
		HttpSession sess=request.getSession();
		sess.setAttribute("day", "2020.09."+dto.getR_days());
		Map<String, Object> data=new HashMap<>();
		System.out.println(sess.getAttribute("day"));
		data.put("days", dto.getR_days());
		return data;
	}
	
	@RequestMapping(value="/reservation/countchk", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> reserveCount(@RequestBody ReservationDTO dto, HttpServletRequest request) {
		HttpSession sess=request.getSession();
		if(dto.getR_count()==1) {
			sess.setAttribute("count", "[1회] 14시 00분");
		} else {
			sess.setAttribute("count", "[2회] 18시 30분");
		}		
		Map<String, Object> data=new HashMap<>();
		System.out.println(sess.getAttribute("count"));
		data.put("count", dto.getR_count());
		return data;
	}
	
	@RequestMapping(value="/reservation/searchSeatInfo", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> searchSeatInfo(@RequestBody ReservationDTO dto, HttpServletRequest request) throws Exception {
		Map<String, Object> map=new HashMap<>();
		HttpSession sess=request.getSession();
		System.out.println(dto.getSeatid());
		ReservationDTO dto2=service.searchSeatInfo(dto);
		map.put("grade", dto2.getGrade());
		map.put("rowno", dto2.getRowno());
		sess.setAttribute("grade", dto2.getGrade());
		sess.setAttribute("rowno", dto2.getRowno());
		sess.setAttribute("price", service.seatPrice(dto2.getGrade()));
		return map;
	}
}
