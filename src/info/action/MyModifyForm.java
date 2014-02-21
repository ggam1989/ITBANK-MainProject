package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.ParamBean;
import dao.ProductDao;
import di.Action;

@Component
public class MyModifyForm implements Action {

	@Autowired
	InfoDao dao;

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod("myDetail", ParamBean.class);
		
		bean.setData(m.invoke(dao, bean));
		
		return false;
	}

}
