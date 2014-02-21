package join.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.BeanConvert;
import dao.BeanConvertJoin;
import dao.JoinDao;
import dao.NoticeDao;
import dao.ParamBean;
import di.Action;

@Component
public class JoinModifyForm implements Action{
	
	@Autowired
	JoinDao dao;
	
	@Autowired
	BeanConvertJoin con;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub

		con.beanconvertjoin(param, (ParamBean)dao.joinDetail(param));
		
		return false;
	}
}
