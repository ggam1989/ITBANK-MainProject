package adminPro.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.BeanConvertPro;
import dao.ParamBean;
import dao.ProductDao;
import di.Action;

@Component
public class AdminProUpForm implements Action {

	@Autowired
	AdminProDao dao;
	
	@Autowired
	BeanConvertPro con;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {

		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);

		if(m.invoke(dao, param) != null){
			con.beanconvertpro(param, (ParamBean)m.invoke(dao, param));
			return false;
		}else{
			param.setUrl("adminPro/adminProUp?p_idno=1");
			return true;
	}
		
/*		System.out.println(param.getP_id());
		if(param.getP_id()==null){
			param.setUrl("adminPro/adminProUp?p_idno=1");
			return true;
		}else{
			return false;
		}*/
	}
}
