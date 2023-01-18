package com.poseidon.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

//MVC 중 C

@Controller
public class IndexController {
	
	
	 @Autowired
	 private IndexService indexService;

	 @GetMapping("/index")
	 public String index() {
		 return "index";
	 }
	 
	 @GetMapping("/member")
	 public ModelAndView member() {
		 ModelAndView mv = new ModelAndView("member");
		 //데이터베이스로 가서 작업하기
		 //Controller -> Service -> DAO -> Mybatis -> DB (순서)
		 List<MemberDTO> list = indexService.list();
		 mv.addObject("list",list); //k ,v
		 
		
		 return mv;
	 }
	 
}
