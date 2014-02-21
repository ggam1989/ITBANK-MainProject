package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class MyWrite implements Action{

	@Autowired
	InfoDao dao;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {

		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);

		param.setLogChkNum((Integer)m.invoke(dao, param));
		if(param.getLogChkNum()==1)
			param.setLogCommand("productList");
		
		param.getSession().setAttribute("sid", param.getJ_id());
		
		param.setUrl("product/productList?logChkNum="+param.getLogChkNum());
		return true;

	}
}
