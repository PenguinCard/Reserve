//package com.shop.yes24.member.Utils;
//
//import java.util.Map;
//
//import com.shop.yes24.member.DTO.MemberDTO;
//
//public class MappingRequestParam {
//	
//	public MemberDTO toMemberDTO(int id, Map<String, String> param) {
//		MemberDTO dto = new MemberDTO();
//		dto.setMember_id(id);
//		dto.setMem_id(param.get("id"));
//		dto.setMem_pw(param.get("pw"));
//		dto.setMem_name(param.get("name"));
//		dto.setMem_birth_year(Integer.parseInt(param.get("birth1")));
//		dto.setMem_birth_month(Integer.parseInt(param.get("birth2")));
//		dto.setMem_birth_day(Integer.parseInt(param.get("birth3")));
//		dto.setMem_phone1(param.get("phone1"));
//		dto.setMem_phone2(param.get("phone2"));
//		dto.setMem_phone3(param.get("phone3"));
//		dto.setMem_tel1(param.get("tel1"));
//		dto.setMem_tel2(param.get("tel2"));
//		dto.setMem_tel3(param.get("tel3"));
//		dto.setMem_address1(param.get("address1"));
//		dto.setMem_address2(param.get("address2"));
//		dto.setMem_address3(param.get("address3"));
//		dto.setMem_email1(param.get("email1"));
//		dto.setMem_email2(param.get("email2"));
//		return dto;
//	}
//}
//
