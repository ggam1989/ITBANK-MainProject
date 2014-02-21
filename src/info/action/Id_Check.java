package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class Id_Check implements Action {

	@Autowired
	InfoDao dao;
	
	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		
		bean.setJ_id((String)m.invoke(dao, bean));
		
		if (bean.getJ_id() != null && !bean.getJ_id().equals("")) {
			System.out.println(bean.getJ_id()+":");
			System.out.println("return");
			bean.setReOes("/view/info/id_CheckForm.jsp?j_id="+bean.getJ_id());
			bean.setOes(true);
		}
		
		return false;
	}
}
