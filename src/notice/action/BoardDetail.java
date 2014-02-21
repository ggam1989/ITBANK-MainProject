package notice.action;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;




import dao.BeanConvert;
import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardDetail implements Action{

	@Autowired
	NoticeDao dao;
	
	@Autowired
	BeanConvert con;
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		dao.addCount(param);
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		con.beanconvert(param, (ParamBean)m.invoke(dao, param));
		
		return false;
	}
}
