package com.briup.cms.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.briup.cms.bean.Article;
import com.briup.cms.bean.Category;
import com.briup.cms.bean.FriendLink;
import com.briup.cms.dao.InfoDao;

@Service
public class InfoServiceImpl implements InfoService{

	@Resource
	InfoDao info;
	

	//添加栏目
	@Override
	public void addPart(Category category) {
		// TODO Auto-generated method stub
		info.addPart(category);
		
	}


	//发布信息
	@Override
	public void pushArticle(Article article) {
		// TODO Auto-generated method stub
		info.pushArticle(article);
		
	}


	/*@Override
	public Category findAllPart() {
		// TODO Auto-generated method stub
		Category category = info.findAllPart();
		return category;
	}*/

	//查找所有栏目
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> findAllPart() {
		// TODO Auto-generated method stub
		List<Category> list = info.findAllPart();
		System.out.println("查找所有栏目"+list);
		return list;
	}


	@Override
	public void deletePart(Integer id) {
		// TODO Auto-generated method stub
		info.deletePart(id);
		System.out.println("删除栏目");
		
	}


	@Override
	public void deleteArticle(Integer id) {
		// TODO Auto-generated method stub
		System.out.println("删除此栏目中的文章");
		info.deleteArticle(id);
		
	}


	@Override
	public void updatePart(Category category) {
		// TODO Auto-generated method stub
		info.updatePart(category);
		
	}


	@Override
	public List<Article> findAllArticleList() {
		List<Article> findAllArticleList = info.findAllArticleList();
		return findAllArticleList;
	}


	@Override
	public void deletePartArticle(Integer category_id) {
		// TODO Auto-generated method stub
		info.deletePartArticle(category_id);
	}


	@Override
	public void updateArticle(Article article) {
		// TODO Auto-generated method stub
		info.updateArticle(article);
	}

	/**
	 * 通过作者查找文章
	 */
	@Override
	public List<Article> findArticleByAuthor(String value) {
		// TODO Auto-generated method stub
		List<Article> findArticleByAuthor = info.findArticleByAuthor(value);
		return findArticleByAuthor;
	}


	@Override
	public List<Article> findArticleByTitle(String value) {
		// TODO Auto-generated method stub
		List<Article> findArticleByTitle = info.findArticleByTitle(value);
		return findArticleByTitle;
	}


	@Override
	public List<Article> findArticleByCategory(String value) {
		// TODO Auto-generated method stub
		List<Article> findArticleByCategory = info.findArticleByCategory(value);
		return findArticleByCategory;
	}

	
	//添加友情链接
	@Override
	public void addFriendLink(FriendLink friendlink) {
		// TODO Auto-generated method stub
		info.addFriendLink(friendlink);
	}


	//查找所有友情链接
	@Override
	public List<FriendLink> findAllFriendLink() {
		// TODO Auto-generated method stub
		List<FriendLink> friendlink = info.findAllFriendLink();
		return friendlink;
	}


	//删除友情链接
	@Override
	public void delFriendLink(Integer friendlink_id) {
		// TODO Auto-generated method stub
		info.delFriendLink(friendlink_id);
	}


	//修改友情链接
	@Override
	public void updateFriendLink(FriendLink friendlink) {
		// TODO Auto-generated method stub
		info.updateFriendLink(friendlink);
	}


	/**
	 * 通过id查找article
	 */
	@Override
	public Article findArticleById(Integer id) {
		// TODO Auto-generated method stub
		Article article = info.findArticleById(id);
		return article;
	}

	
	/**
	 * 通过id查找category
	 */
	@Override
	public Category findPartById(Integer id) {
		// TODO Auto-generated method stub
		Category category = info.findCategoryById(id);
		return category;
	}


	@Override
	public void addClick(Article article) {
		// TODO Auto-generated method stub
		info.addClick(article);
	}
	

}
