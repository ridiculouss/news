package com.news.journalism.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.news.journalism.entity.News;
import com.news.util.PageHibernateCallback;

@Component("newsDao")
@SuppressWarnings("unchecked")
public class NewsDao {

	@Resource
	private HibernateTemplate hibernateTemplate;

	public void saveNews(News news) {
		hibernateTemplate.save(news);
	}
	
	public List<News> findAllNews() {
		String hql = "from News where is_check = 1 order by date desc";
		List<News> list = (List<News>) hibernateTemplate.find(hql);
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public News findNewsByNid(int newsId) {
		return hibernateTemplate.get(News.class, newsId);
	}

	public void updateNews(News news2) {
		hibernateTemplate.update(news2);
	}

	public int findCountByCoulumn(String newsCoulumn) {
		String hql = "select count(*) from News where coulumn = ?";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql,newsCoulumn);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<News> findAllByPage(String newsCoulumn, int begin, int eachPageCount) {
		String hql = "select n from News n where n.is_check = 1 and n.coulumn = ?";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, new Object[] { newsCoulumn }, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	public int findCountByKeyword(String keyword) {
		String hql = "select count(*) from News where is_check = 1 and title like '%"+keyword+"%'";
		List<Long> list = (List<Long>) hibernateTemplate.find(hql);
		if (list != null && list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	public List<News> findAllByKeyword(String keyword, int begin, int eachPageCount) {
		String hql = "select n from News n where n.is_check = 1 and n.title like '%"+keyword+"%'";
		List<News> list = hibernateTemplate
				.execute(new PageHibernateCallback<>(hql, null, begin, eachPageCount));
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
