package com.news.journalism.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.news.journalism.entity.News;
import com.news.util.PageHibernateCallback;

@Component("userNewsDao")
@SuppressWarnings("unchecked")
public class UserNewsDao {

	@Resource
	private HibernateTemplate hibernateTemplate;

	public void saveNews(News news) {
		hibernateTemplate.save(news);
	}
	
	//根据uid查找新闻的数量
	public int findCountByUid(Integer uid) {
		String hql = "select count(*) from News n where n.user.uid = ?";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql, uid);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//根据uid查找新闻
	public List<News> findByPageUid(Integer uid, int begin, int eachPageCount) {
		String hql = "select n from News n join n.user u where u.uid = ?";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, new Object[] { uid }, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//查找是否发布新闻的数量
	public int findCountByIssue(Integer uid, int issue) {
		String hql = "select count(*) from News n where n.user.uid = ? and n.is_issue = ?";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql, uid,issue);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	//查找是否发布新闻
	public List<News> findByPageIssue(Integer uid, int issue, int begin, int eachPageCount) {
		String hql = "select n from News n join n.user u where u.uid = ? and n.is_issue = ?";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, new Object[] { uid ,issue }, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	//发布新闻
	public void updateNews(News news) {
		hibernateTemplate.update(news);
	}

	//根据nid查找新闻
	public News findByNid(Integer nid) {
		return hibernateTemplate.get(News.class, nid);
	}


}
