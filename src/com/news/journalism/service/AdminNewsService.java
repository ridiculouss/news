package com.news.journalism.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.news.journalism.dao.AdminNewsDao;
import com.news.journalism.entity.News;
import com.news.util.PageBean;

@Component("adminNewsService")
@Transactional
public class AdminNewsService {

	@Resource(name="adminNewsDao")
	private AdminNewsDao adminNewsDao;

	public PageBean<News> findAll(int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 15;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = adminNewsDao.findAllCount();
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
		List<News> list = adminNewsDao.findAllByPage(begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

	public PageBean<News> findByCheck(int check, int page) {
		PageBean<News> pageBean = new PageBean<News>();
		//设置当前的页数
		pageBean.setPage(page);
		//设置每页显示记录数
		int eachPageCount = 15;
		pageBean.setEachPageCount(eachPageCount);
		//设置总记录数
		int totalCount = 0;
		totalCount = adminNewsDao.findCountByCheck(check);
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
		List<News> list = adminNewsDao.findByPageCheck(check,begin,eachPageCount);
		pageBean.setList(list);
		return pageBean;
	}

	public void changeStatus(News news, int status) {
		News news2 = adminNewsDao.findByNid(news.getNid());
		if (news2 != null && status == 0) {
			news2.setIs_check(1);
		}
		if (news2 != null && status == 1) {
			news2.setIs_check(0);
		}
		adminNewsDao.updateNews(news2);
	}

}
