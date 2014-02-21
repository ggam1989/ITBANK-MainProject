package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class MyDelete implements Action{
	
	@Autowired
	InfoDao dao;
	
	@Override
	public boolean execute( ParamBean param) throws Exception {
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		
		param.setUrl("notice/logOut");
		
		return true;
	}
}
