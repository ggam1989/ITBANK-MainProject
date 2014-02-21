package join.action;

import java.lang.reflect.Method;

import notice.action.FileUpLoad;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.JoinDao;
import dao.ParamBean;
import di.Action;

@Component
public class JoinModify implements Action{
		
	@Autowired
	JoinDao dao;
	
	@Override
		public boolean execute(ParamBean param) throws Exception {
			// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		
		param.setUrl(param.getMenu()+"/joinDetail?j_id="+param.getJ_id());
		return true;
	}
	
}
