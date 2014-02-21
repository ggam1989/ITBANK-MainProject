package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class sendreg implements Action {

	@Autowired
	InfoDao dao;

	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println(bean.getReg_date_str());
		System.out.println(bean.getReg_date());
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		m.invoke(dao, bean);
		
		bean.setUrl("info/sendList?j_id="+bean.getJ_id());
		return true;
		
	}

}
