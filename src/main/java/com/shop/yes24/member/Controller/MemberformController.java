package com.shop.yes24.member.Controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.member.DTO.MemberDTO;
import com.shop.yes24.member.Service.MemberformService;

@Controller
public class MemberformController {
	
	@Autowired
	MemberformService service;
	
	@RequestMapping("/member/MemberForm.do")
	public ModelAndView memberForm() {
		ModelAndView mav=new ModelAndView("/member/MemberForm");
		return mav;
	}
	
	@RequestMapping(value="/insertMember.do", method=RequestMethod.POST ) //jsp에서 사용자가 입력한 값 insertMembmer.do로 받음
	public ModelAndView insertMember(MemberDTO dto) throws Exception{
		ModelAndView mav=new ModelAndView("redirect:/member/Login");
		dto.setMember_id(service.selectMaxId());
		System.out.println(dto.toString());
		service.insertMember(dto);	
		
		return mav;
	}
	
	// 2020.08 19 아이디 중복검사
		@RequestMapping("/member/idcheck")
		@ResponseBody 
		public Map<String, Object> idcheck(@RequestBody MemberDTO dto) throws Exception {
			Map<String, Object> id2 = new HashMap<>(); //id2�� id�� ��� ����
			//""�� Ű , value
			String id=dto.getMem_id();
			if(service.selectMemberId(id)!=""&&service.selectMemberId(id)!=null) {
				id2.put("chk", "true");
			} else {
				id2.put("chk", "false");
			}
				
			
			return id2;
		}
	
	
}
