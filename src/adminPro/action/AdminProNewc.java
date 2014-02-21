package adminPro.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;

@Component
public class AdminProNewc implements Action {

	@Autowired
	AdminProDao dao;

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
	
		return false;
	}

}
