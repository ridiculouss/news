package com.news.journalism.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.news.journalism.entity.News;
import com.news.util.PageHibernateCallback;

@Component("adminNewsDao")
@SuppressWarnings("unchecked")
public class AdminNewsDao {

	@Resource
	private HibernateTemplate hibernateTemplate;

	//查找所有的新闻数量
	public int findAllCount() {
		String hql = "select count(*) from News";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//查找所有的新闻
	public List<News> findAllByPage(int begin, int eachPageCount) {
		String hql = "select n from News n";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, null, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//查找是否审核新闻的数量
	public int findCountByCheck(int check) {
		String hql = "select count(*) from News n where n.is_check = ?";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql,check);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//查找是否审核新闻的数量
	public List<News> findByPageCheck(int check, int begin, int eachPageCount) {
		String hql = "select n from News n where n.is_check = ?";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, new Object[] { check }, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public News findByNid(Integer nid) {
		return hibernateTemplate.get(News.class, nid);
	}

	public void updateNews(News news2) {
		hibernateTemplate.update(news2);
	}

}
