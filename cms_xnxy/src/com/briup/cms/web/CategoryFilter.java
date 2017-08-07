package com.briup.cms.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.briup.cms.bean.Article;
import com.briup.cms.bean.Category;
import com.briup.cms.bean.FriendLink;
import com.briup.cms.dao.InfoDao;

public class CategoryFilter implements HandlerInterceptor{

	@Autowired
	InfoDao info;
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp,
			Object arg2) throws Exception {
		// TODO Auto-generated method stub
		//提前加载栏目
		List<Category> category = info.findAllPart();
		System.out.println(category);
		HttpSession session = req.getSession();
		System.out.println("加载栏目");
		System.out.println("======================提前加载栏目=====================");
		//System.out.println(category);
		session.removeAttribute("categorys");
		System.out.println(category);
		session.setAttribute("categorys", category);
		System.out.println("。。。。。。。。。。。。。。。。提前加载栏目结束。。。。。。。。。。。。。。。。。");
		//提前加载文章
		List<Article> findAllArticleList = info.findAllArticleList();
		System.out.println("======================提前加载文章=====================");
		System.out.println(findAllArticleList);
		session.removeAttribute("Articles");
		session.setAttribute("Articles", findAllArticleList);
		System.out.println("。。。。。。。。。。。。。。。。提前加载文章结束。。。。。。。。。。。。。。。。。");
		//提前加载链接
		System.out.println("======================提前加载链接=====================");
		session.removeAttribute("FriendLinks");
		List<FriendLink> friendlink  = info.findAllFriendLink();
		System.out.println(friendlink);
		session.setAttribute("FriendLinks", friendlink);
		System.out.println("。。。。。。。。。。。。。。。。提前加载链接结束。。。。。。。。。。。。。。。。。");
		return true;
	} 

}
