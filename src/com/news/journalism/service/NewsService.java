package com.news.journalism.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.news.journalism.dao.NewsDao;
import com.news.journalism.entity.News;
import com.news.util.PageBean;

@Component("newsService")
@Transactional
public class NewsService {

	@Resource(name="newsDao")
	private NewsDao newsDao;
	

	public List<News> findAllNews() {
		return newsDao.findAllNews();
	}

	public News findNewsByNid(int newsId) {
		News news2 = newsDao.findNewsByNid(newsId);
		news2.setClick(news2.getClick()+1);
		newsDao.updateNews(news2);
		return news2;
	}

	public PageBean<News> findNewsByCoulumn(String newsCoulumn, int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 20;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = newsDao.findCountByCoulumn(newsCoulumn);
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
		List<News> list = newsDao.findAllByPage(newsCoulumn,begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

	public PageBean<News> findNewsByKeyword(String keyword, int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 12;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = newsDao.findCountByKeyword(keyword);
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
		List<News> list = newsDao.findAllByKeyword(keyword,begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

}
