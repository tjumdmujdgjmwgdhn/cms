package com.briup.cms.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.briup.cms.bean.Article;
import com.briup.cms.bean.Category;
import com.briup.cms.bean.FriendLink;

@Component
public interface InfoDao {
	//添加栏目
	void addPart(Category category);
	
	//发布信息 
	void pushArticle(Article article);
	
	//查找所有栏目
	List<Category> findAllPart();
	
	//删除栏目和此栏目中的文章
	void deletePart(Integer id);
	void deletePartArticle(Integer id);
	
	//删除文章
	void deleteArticle(Integer id);
	//deleteAritcle
	
	//更新栏目
	void updatePart(Category category);

	//查找所有的文章
	List<Article> findAllArticleList();
	
	//更新文章
	void updateArticle(Article article);

	//通过作者查找文章
	List<Article> findArticleByAuthor(String value);

	//通过标题查找文章
	List<Article> findArticleByTitle(String value);

	//通过category查找文章
	List<Article> findArticleByCategory(String value);

	//添加友情链接
	void addFriendLink(FriendLink friendlink);

	//查找所有友情链接
	List<FriendLink> findAllFriendLink();

	//删除友情链接
	void delFriendLink(Integer friendlink_id);

	//修改友情链接
	void updateFriendLink(FriendLink friendlink);

	//通过id查找article
	Article findArticleById(Integer id);

	//通过id查找category
	Category findCategoryById(Integer id);
	
	//增加点击数
	void addClick(Article article);

}
