package com.shop.yes24.qna.Controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.shop.yes24.member.DTO.MemberDTO;
import com.shop.yes24.qna.DTO.QnaDTO;
import com.shop.yes24.qna.Service.QnaService;


@Controller
public class QnaController {

	private static final String QNA_IMAGE_REPO = "C:\\yboard\\qna_image";
	
	@Autowired
	QnaService qnaservice;
	
	
	//글목록보기
	@RequestMapping("/qna/QnaList")
	public ModelAndView selectlist() {
		ModelAndView mav = new ModelAndView("/qna/QnaList");
		List<QnaDTO> list = qnaservice.selectlist();
		mav.addObject("list", list);
		//System.out.println(list.get(0).getWritedate());
		
		return mav;
	}
	
	//글쓰기창만 보여줌
	@RequestMapping("/qna/Qna")
	public ModelAndView qnaview(){
		ModelAndView mav = new ModelAndView("/qna/Qna");
		
		return mav;
	}
	
	//글쓰기기능
	@RequestMapping(value="/qna/Qnawrite.do", method=RequestMethod.POST)
	@ResponseBody
	public ModelAndView insertarticle(@RequestParam Map<String, String> article, @RequestParam("imagefilename")  MultipartFile file, HttpServletRequest request ) throws Exception {
		request.setCharacterEncoding("utf-8"); 
		ModelAndView mav = new ModelAndView("redirect:/qna/QnaList");
		HttpSession session = request.getSession();
		MemberDTO memberdto=(MemberDTO)session.getAttribute("memberInfo");
		
		QnaDTO qnadto = new QnaDTO();
		qnadto.setWriter_id(memberdto.getMem_id());
		qnadto.setTitle(article.get("title"));
		qnadto.setContent(article.get("content"));
		qnadto.setParentno(0);  //따라갈 부모 번호
		qnadto.setArticleno(qnaservice.selectnvl()); //글번호
		/* qnadto.setImagefilename(article.get("Imagefilename")); */
		
		String origin=file.getOriginalFilename(); //requestparam을 통해서 파일이름을 가져옴
		String path=QNA_IMAGE_REPO + "\\" +qnadto.getArticleno(); //경로생성 및 폴더지정이 되어야 file이 testfile로 변환된다.
		try {
			File folder=new File(path);
			if(!folder.exists()) {
				try {
					folder.mkdirs(); //폴더생성
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			if(!file.isEmpty()&&file.getSize()!=0) {
				File testFile=new File(path +"\\ "+ origin);
				file.transferTo(testFile);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		qnaservice.insertarticle(qnadto);		
		return mav;
	}
	
	@RequestMapping("/qna/QnaDetail")
	public ModelAndView qnadetail(@RequestParam ("articleno") int articleno) {
		ModelAndView mav = new ModelAndView("/qna/QnaDetail");
		QnaDTO detail = qnaservice.selectdetail(articleno);
		mav.addObject("detail", detail);
		mav.addObject("articleno", articleno);
		
		return mav;
	}
	
	@RequestMapping(value="/qna/QnaModify.do", method=RequestMethod.POST)
	public ModelAndView qnaModify(@RequestParam Map<String, String> modify) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/qna/QnaList");
			
		QnaDTO dto = new QnaDTO();
		if(modify.get("articleno")!=null&&modify.get("articleno").length()!=0) {
			dto.setArticleno(Integer.parseInt(modify.get("articleno")));
		}
		dto.setContent(modify.get("content"));
		dto.setTitle(modify.get("title"));
		qnaservice.updatearticle(dto);
		
		return mav;
	}
	
	@RequestMapping(value="/qna/QnaDelete.do", method=RequestMethod.GET)
	public ModelAndView qnadelete(@RequestParam ("articleno") int articleno) {
		ModelAndView mav = new ModelAndView("redirect:/qna/QnaList");
		qnaservice.deletearticle(articleno);
		
		
		
		return mav;
	}
	
	@RequestMapping(value = "/qna/QnaReplyform.do", method = RequestMethod.GET)
	public ModelAndView replyform(@RequestParam("articleno") int parentno, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("/qna/QnaReplyform");
		HttpSession session = request.getSession();
		mav.addObject("parentno", parentno);
		return mav;
	}

	@RequestMapping(value = "/qna/Qnareply.do", method = RequestMethod.POST)
	public ModelAndView reply(@RequestParam Map<String, String> article, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("redirect:/qna/QnaList");
		HttpSession session = request.getSession();
		MemberDTO memdto = new MemberDTO();
		

		QnaDTO qnadto = new QnaDTO();
		qnadto.setTitle(article.get("title"));
		qnadto.setContent(article.get("content"));
		qnadto.setParentno(Integer.parseInt(article.get("parentno"))); // 따라갈 부모 번호
		qnadto.setArticleno(qnaservice.selectnvl()); // 글번호
		
		
		

		qnaservice.insertarticle(qnadto);
		return mav;
	}
	
	
	
	
	
}
