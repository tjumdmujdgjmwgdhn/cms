package com.briup.cms.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.briup.cms.bean.Article;

@Controller
public class JumpController {
	
	//跳转到home.jsp
		@RequestMapping("/Tohome")
		public String home(){
			System.out.println("Tohome");
			return "manager/home.jsp";
		}
		//跳转到
		@RequestMapping("/Toindex")
		public String index(){
			return "index1.jsp";
		}
		
		@RequestMapping("/toIndex1")
		public String toindex(){
			
			System.out.println("index1.jsp");
			return "index1.jsp";
		}
		
		
		@RequestMapping("/toIndex.action")
		public String toIndex(){
			
			System.out.println("toIndex");
			return "index.jsp";
		}
		
		@RequestMapping("/toIndex1.action")
		public String toIndex1(){
			System.out.println("toIndex1.action");
			//ModelAndView mm = new ModelAndView("index1.jsp");
			return "index1.jsp";
		}
		
		@RequestMapping("/toHome.action")
		public String toHome(){
			
			System.out.println("manager/toHome");
			return "manager/home.jsp";
		}
		
		
		
		@RequestMapping("/articlePublisur.action")
		public String toPublisur(){
			System.out.println("articlePublisur.action");
			return "articlePublisur.jsp";
		}
		

}
