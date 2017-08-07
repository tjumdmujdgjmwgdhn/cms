package com.briup.cms.web;



import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiDevice.Info;

import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.briup.cms.bean.Article;
import com.briup.cms.bean.Category;
import com.briup.cms.bean.FriendLink;
import com.briup.cms.dao.InfoDao;
import com.briup.cms.service.InfoService;
import com.briup.cms.service.InfoServiceImpl;
import com.sun.tracing.dtrace.ArgsAttributes;
import com.sun.tracing.dtrace.Attributes;


@Controller
public class ManagerController {
	@Resource
	InfoService info;
	//模型和逻辑视图
	//判断三层架构是否搭建好
	//打印service
	//打印dao
	//InfoServiceImpl info = new InfoServiceImpl();
	
	//添加栏目
	@RequestMapping("manager/addCategory.action")
	public String toAddCategory(Category category,HttpServletRequest req,HttpServletResponse resp){
		String name = category.getName();
		Integer code = category.getCode();
		info.addPart(category);
		return null;
	}
	
	//信息发布
	@RequestMapping("manager/articlePublisur.action")
	public ModelAndView toarticlePublisur(Article article){
		article.setPublisurDate(new Date());
		System.out.println("manager/articlePublisur.action");
		System.out.println(article);
		info.pushArticle(article);
		System.out.println("===========================");
		return null;
	}
	
/*	//栏目管理
	@RequestMapping("categoryList")
	public String tocategoryList(){
		
		return "manager/categoryList.jsp";
	}*/
	
	
	//栏目管理   删除
	@RequestMapping("manager/deleteCategory.action")
	public ModelAndView todeleteCategory(Integer category_id){
		//List<Category> list = info.findAllPart();
		//info.deleteArticle(category_id);
		System.out.println("=======================删除栏目=================="+category_id);
		info.deletePartArticle(category_id);
		System.out.println("................................................");
		info.deletePart(category_id);
		System.out.println("////////////////////////////////////////////////");
		System.out.println("manager/deleteCategory.action");
		System.out.println("++++++++"+category_id+"===");
		return null;
	}
	//栏目管理     修改
	@RequestMapping("updateCategory.action")
	public ModelAndView toupdateCategory(Category category){
		System.out.println("栏目更新");
		//System.out.println();
		info.updatePart(category);
		System.out.println(category+"===============");
		return null;
	}
	
	//信息管理
	@RequestMapping("articleListContent.action")
	public String articleListContent(HttpServletRequest request,String key,String value){
		System.out.println("============title="+key+"==="+value);
		HttpSession session = request.getSession();
		//搜索
		switch (key) {
		//作者
		case "author":
			List<Article> findArticleByAuthor =  info.findArticleByAuthor(value);
			session.removeAttribute("Articles");
			session.setAttribute("Articles", findArticleByAuthor);
			break;
		//标题
		case "title":
			List<Article> findArticleByTitle = info.findArticleByTitle(value);
			session.removeAttribute("Articles");
			session.setAttribute("Articles", findArticleByTitle);
			break;

		//栏目
		case "category":
			List<Article> findArticleByCategory = info.findArticleByCategory(value);
			session.removeAttribute("Articles");
			session.setAttribute("Articles",findArticleByCategory);
			break;

		default:
			break;
		}
		System.out.println("============信息管理=================");
		
		return "manager/articleListContent.jsp";
	}
	
	//信息管理  删除文章
	@RequestMapping("manager/deleteArticle.action")
	public ModelAndView deleteArticle(Integer article_id,HttpServletRequest req){
		System.out.println("=============删除文章==============");
		info.deleteArticle(article_id);
		return null;
	}
	
	//信息管理  修改文章updateArticleInfo
	@RequestMapping("updateArticleInfo.action")
	public ModelAndView updateArticleInfo(Article article){
		System.out.println("===========修改文章============");
		System.out.println(article);
		info.updateArticle(article);
		return null;
	}
	
	//添加友情链接
	@RequestMapping("baseSet.action")
	public ModelAndView baseSet(FriendLink friendlink){
		System.out.println("===========添加友情链接==============");
		System.out.println(friendlink);
		//HttpSession session = req.getSession();
		//session.removeAttribute("FriendLinks");
		//session.setAttribute("", value);
		info.addFriendLink(friendlink);
		System.out.println("==================================");
		return null;
	}
	
	//删除友情链接
	@RequestMapping("deleteFriendLink.action")
	public ModelAndView delFrienkLink(Integer friendlink_id){
		System.out.println("================删除友情链接================");
		System.out.println(friendlink_id);
		info.delFriendLink(friendlink_id);
		return null;
	}
	
	//编辑友情链接
	@RequestMapping("updateFriendLink.action")
	public ModelAndView updateFriendLink(FriendLink friendlink){
		System.out.println("=================编辑友情链接==================");
		System.out.println(friendlink);
		info.updateFriendLink(friendlink);
		return null;
	}
	
	//查找所有的友情链接
	@RequestMapping("LinkManage.action")
	public ModelAndView linkManage(HttpServletRequest req){
		System.out.println("=============查找友情链接==============");
		//HttpSession session = req.getSession();
		//session.removeAttribute("friendlink");
		List<FriendLink> friendlink  = info.findAllFriendLink();
		System.out.println(friendlink);
		//session.setAttribute("FriendLinks", friendlink);
		return null;
	}
	
	//查找所有基础设施链接
	@RequestMapping("manager/updateBasicSet.action")
	public String baseLink(){
		
		return null;
	}
	
	//更多
	@RequestMapping("toList.action")
	public ModelAndView toList(){
		ModelAndView mm = new ModelAndView("list.jsp");
		return mm;
	}
	
	//点击次数加一
	@RequestMapping("/toContent.action")
	public String toContent(HttpServletRequest req,Integer id){
		System.out.println("=========toContent.action===========");
		System.out.println(id);
		Article article = info.findArticleById(id);
		System.out.println("========000000000000==============");
		Integer clickTimes = article.getClickTimes();
		article.setClickTimes(clickTimes+1);
		System.out.println("============1111111111111111============");
		System.out.println(article);
		info.addClick(article);
		//info.updateArticle(article);
		System.out.println("toContent");
		return "content.jsp";
	}
	

}
