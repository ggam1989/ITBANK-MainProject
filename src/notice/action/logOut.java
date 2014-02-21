package notice.action;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import dao.ParamBean;
import di.Action;

@Component
public class logOut implements Action{

	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
	
		param.getSession().invalidate();
		
		param.setMenu("product");
		param.setCommand("productList");
		param.setC_id("Top");
		param.setP_id(1);
		param.setLogChkNum(3);
		
		
//		if(param.getMenu().equals("product"))
			param.setUrl(param.getMenu()+"/"+param.getCommand()+"?c_id="+param.getC_id()+"&p_id="+param.getP_id()+"&logChkNum="+param.getLogChkNum());
	//	else if(param.getMenu().equals("info")||param.getMenu().equals("join"))
		//	param.setUrl("product/productList/?c_id=Top&p_id=1&logChkNum="+param.getLogChkNum());
		//else
			//param.setUrl(param.getMenu()+"/"+param.getLogCommand()+"?logChkNum="+param.getLogChkNum());
			
		return true;
	}
}
