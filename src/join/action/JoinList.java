package join.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.JoinDao;
import dao.ParamBean;
import di.Action;

@Component
public class JoinList implements Action{
	
	@Autowired
	JoinDao dao;
	
	public boolean execute(
			 ParamBean bean) throws Exception {
		System.out.println("dd");
		// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
		//List list = dao.getBoardList(menu);
		
		bean.setData(m.invoke(dao, bean));
		
		return false;
	}
}
