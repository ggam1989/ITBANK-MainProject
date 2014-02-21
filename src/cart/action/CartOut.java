package cart.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.CartDao;
import dao.ParamBean;
import di.Action;

@Component
public class CartOut implements Action {

	@Autowired
	CartDao dao;

	public boolean execute(ParamBean param) throws Exception {

		param.setJ_id((String)param.getSession().getAttribute("sid"));
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(),ParamBean.class);

		m.invoke(dao, param);
		
	/*	m = dao.getClass().getDeclaredMethod("cartList",ParamBean.class);

		m.invoke(dao, param);
		
		System.out.println(param.getJ_id());*/
		
		param.setUrl(param.getMenu() + "/cartList?j_id=" + param.getJ_id());

		return true;
	}
}
