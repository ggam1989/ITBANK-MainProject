package adminPro.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;

@Component
public class AdminProUpdate implements Action {

	@Autowired
	AdminProDao dao;

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println(bean.getP_id());
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		
		m.invoke(dao, bean);
		
		bean.setUrl("adminPro/adminProUp");
		return true;
	}

}
