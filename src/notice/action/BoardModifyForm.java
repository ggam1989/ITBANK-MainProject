package notice.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.BeanConvert;
import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardModifyForm implements Action{

	@Autowired
	NoticeDao dao;
	@Autowired
	BeanConvert con;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		con.beanconvert(param, (ParamBean)dao.boardDetail(param));
		
		return false;
	}
}
