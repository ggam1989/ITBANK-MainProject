package product.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import dao.BeanConvertPro;
import dao.ParamBean;
import dao.ProductDao;
import di.Action;

@Component
public class ProductDetail implements Action {

	@Autowired
	ProductDao dao;
	
	@Autowired
	BeanConvertPro con;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {

		if(param.getMenu().equals("product"))
		dao.addCountP(param);

		Method m = dao.getClass().getDeclaredMethod(param.getCommand(),
				ParamBean.class);
		con.beanconvertpro(param, (ParamBean)m.invoke(dao, param));
		
		return false;
	}
}
