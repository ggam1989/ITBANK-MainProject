package adminPro.action;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;

@Component
public class AdminProNewpp implements Action {

	@Autowired
	AdminProDao dao;

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
	
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		bean.setData(m.invoke(dao, bean));
		
		return false;
	}

}
