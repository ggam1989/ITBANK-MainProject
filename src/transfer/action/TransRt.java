package transfer.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;


@Component
public class TransRt implements Action{

	@Autowired
	AdminProDao dao;
	
	@Override	
	public boolean execute( ParamBean bean) throws Exception {
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		
		m.invoke(dao, bean);

		bean.setUrl(bean.getMenu()+"/transferList");
		return true;
		
	}
}
