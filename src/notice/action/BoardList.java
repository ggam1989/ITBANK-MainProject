package notice.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardList implements Action{

	@Autowired
	NoticeDao dao;
	
	public boolean execute(
			 ParamBean bean) throws Exception {
		// TODO Auto-generated method stub

		bean.setLimit(3);
		
		int pageLimit=4;
			
		bean.setCnt(dao.listCount(bean));
		
		bean.setMaxPage(bean.getCnt()/bean.getLimit());
		
		if(bean.getCnt()%bean.getLimit()!=0) bean.setMaxPage(bean.getMaxPage()+1);
		
		bean.setStartPage((bean.getPage()-1)/pageLimit*pageLimit+1);
		bean.setEndPage(bean.getStartPage()+pageLimit-1);
		
		
		
		if(bean.getMaxPage()<bean.getEndPage())
			bean.setEndPage(bean.getMaxPage());
		
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		//List list = dao.getBoardList(menu);
		
		bean.setData(m.invoke(dao, bean));
		
		
		return false;
	}
}
