package com.news.journalism.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.news.journalism.dao.UserNewsDao;
import com.news.journalism.entity.News;
import com.news.util.PageBean;

@Component("userNewsService")
@Transactional
public class UserNewsService {

	@Resource(name="userNewsDao")
	private UserNewsDao userNewsDao;
	
	public void createNews(News news) {
		userNewsDao.saveNews(news);
	}

	public PageBean<News> findByUid(Integer uid, int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 10;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = userNewsDao.findCountByUid(uid);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if (totalCount % eachPageCount == 0) {
			totalPage = totalCount / eachPageCount;
		}else {
			totalPage = totalCount / eachPageCount +1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示的数据集合
		int begin = (page - 1) * eachPageCount;
		List<News> list = userNewsDao.findByPageUid(uid,begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

	public PageBean<News> findByIssue(Integer uid, int issue, int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 10;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = userNewsDao.findCountByIssue(uid,issue);
		pageBean.setTotalCount(totalCount);
		//设置总页数
		int totalPage = 0;
		if (totalCount % eachPageCount == 0) {
			totalPage = totalCount / eachPageCount;
		}else {
			totalPage = totalCount / eachPageCount +1;
		}
		pageBean.setTotalPage(totalPage);
		//每页显示的数据集合
		int begin = (page - 1) * eachPageCount;
		List<News> list = userNewsDao.findByPageIssue(uid,issue,begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

	public void changeStatus(News news) {
		News news2 = userNewsDao.findByNid(news.getNid());
		if (news2 != null) {
			news2.setIs_issue(1);
		}
		userNewsDao.updateNews(news2);
	}

	public News showNews(News news) {
		return userNewsDao.findByNid(news.getNid());
	}

}
