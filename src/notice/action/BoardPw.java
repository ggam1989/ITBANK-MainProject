package notice.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardPw implements Action{

	@Autowired
	NoticeDao dao;
	
	@Override
	public boolean execute( ParamBean bean) throws Exception {

		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		
		
		
		if((boolean)m.invoke(dao, bean))
		{
			bean.setUrl(bean.getMenu()+"/"+bean.getUrl()+"?id="+bean.getId()+"&page="+bean.getPage());
			return true;
		}else{
			bean.setUrl("boardDetail?id="+bean.getId()+"&page="+bean.getPage());
			return false;
		}
		
		
		
	}
}
