package com.briup.cms.service;

import java.util.List;

import com.briup.cms.bean.Article;
import com.briup.cms.bean.Category;
import com.briup.cms.bean.FriendLink;

public interface InfoService {
	//添加栏目
	void addPart(Category category);
	
	//发布信息
	void pushArticle(Article article);
	
	//查找所有栏目
	List<Category> findAllPart();
	
	//删除栏目和此栏目中的文章
	void deletePart(Integer id);
	/**
	 * 删除此栏目中的的文章
	 * @param category_id
	 */
	void deletePartArticle(Integer category_id);
	
	
	/**
	 * 删除文章
	 * @param id
	 */
	void deleteArticle(Integer id);
	//Category findAllPart();
	
	//更新栏目
	void updatePart(Category category);
	/**
	 * 查找所有的文章
	 * @return
	 */
	List<Article> findAllArticleList();
	
	/**
	 * 更新文章
	 * @param article_id
	 */
	void updateArticle(Article article);

	/**
	 * 通过作者查找文章
	 * @param key
	 * @return 
	 */
	List<Article> findArticleByAuthor(String value);

	/**
	 * 通过标题查找文章
	 * @param value
	 * @return
	 */
	List<Article> findArticleByTitle(String value);

	/**
	 * 通过category查找文章
	 * @param value
	 * @return
	 */
	List<Article> findArticleByCategory(String value);

	/**
	 * 添加友情链接
	 * @param friendlink
	 */
	void addFriendLink(FriendLink friendlink);

	/**
	 * 查找所有友情链接
	 * @return
	 */
	List<FriendLink> findAllFriendLink();

	/**
	 * 删除友情链接
	 * @param friendlink_id
	 */
	void delFriendLink(Integer friendlink_id);

	/**
	 * 修改友情链接
	 * @param friendlink
	 */
	void updateFriendLink(FriendLink friendlink);

	/**
	 * 通过article的id查找Article
	 */
	Article findArticleById(Integer id);

	/**
	 * 通过Category的id查找Category
	 */
	Category findPartById(Integer id);
	
	/**
	 * 更新点击数
	 */
	void addClick(Article article);

}
