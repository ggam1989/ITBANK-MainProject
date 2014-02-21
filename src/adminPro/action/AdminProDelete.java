package adminPro.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;


@Component
public class AdminProDelete implements Action{

	@Autowired
	AdminProDao dao;
	
	@Override
	public boolean execute( ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		
		param.setUrl(param.getMenu()+"/adminProUp");
		
		return true;
	}
}
