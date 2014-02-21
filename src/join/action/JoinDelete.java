package join.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.JoinDao;
import dao.ParamBean;
import di.Action;

@Component
public class JoinDelete implements Action{
	
	@Autowired
	JoinDao dao;
	
	@Override
	public boolean execute( ParamBean param) throws Exception {
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		
		param.setUrl(param.getMenu()+"/joinList");
		
		return true;
	}
}
