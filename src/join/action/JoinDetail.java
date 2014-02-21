package join.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import dao.BeanConvertJoin;
import dao.JoinDao;
import dao.ParamBean;
import di.Action;

@Component
public class JoinDetail implements Action{
	
	@Autowired
	JoinDao dao;
	
	@Autowired
	BeanConvertJoin con;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		//아래대신 사용		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		con.beanconvertjoin(param,(ParamBean)m.invoke(dao,param));
		return false;
	}
}
