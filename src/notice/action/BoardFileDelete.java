package notice.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardFileDelete implements Action{

	@Autowired
	NoticeDao dao;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		param.setCommand("boardModifyForm");
		
		return false;
	}
}
