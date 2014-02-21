package product.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.ParamBean;
import dao.ProductDao;
import di.Action;

@Component
public class ProductList implements Action {

	@Autowired
	ProductDao dao;
	
	

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		bean.setCnt(dao.listCount(bean));
		
		//카테고리를 가져온다.
		Method m = dao.getClass().getDeclaredMethod("procg", ParamBean.class);
		
		bean.setProcg(m.invoke(dao, bean));
		
		if(bean.getC_id()==null || bean.getC_id()=="")
			bean.setC_id("Top");

		if(bean.getContent()==null || bean.getContent()=="")
			bean.setContent("");
		
		if(bean.getP_id()==null)
				bean.setP_id(1);
		
		//c_id가 널이 아닐때 메뉴를 가져온다.
		m = dao.getClass().getDeclaredMethod("promenu", ParamBean.class);
		
		bean.setPromenu(m.invoke(dao, bean));
		
		m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		
		bean.setData(m.invoke(dao, bean));
		
		return false;
	}

}
