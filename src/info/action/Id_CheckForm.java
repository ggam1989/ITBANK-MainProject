package info.action;

import org.springframework.stereotype.Component;

import dao.ParamBean;
import di.Action;

@Component
public class Id_CheckForm implements Action {

	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		bean.setReOes("../view/info/id_CheckForm");
		bean.setOes(true);
		
		return false;
	}

}
