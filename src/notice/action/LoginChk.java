package notice.action;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.InfoDao;
import dao.NoticeDao;
import dao.ParamBean;
import di.Action;

@Component
public class LoginChk implements Action{

	@Autowired
	InfoDao dao;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		if(param.getLogChkNum()!=null){
		param.setLogChkNum(dao.loginChk(param));
		}
		
		System.out.println("로그체크넘 : " + param.getLogChkNum());
		System.out.println("로그커맨드 : " + param.getLogCommand());
		
		
		if (param.getLogChkNum() == 1 || param.getLogChkNum() == 7 ) {
			param.getSession().setAttribute("sid", param.getJ_id());
		}
		
		System.out.println("ssss"+param.getSession().getAttribute("sid"));
		
/*		param.setUrl("product/productList?c_id="+param.getC_id()+"&p_id="+param.getP_id()+"&logChkNum="+param.getLogChkNum());*/
		
		if(param.getMenu().equals("product"))
			param.setUrl(param.getMenu()+"/"+param.getLogCommand()+"?c_id="+param.getC_id()+"&p_id="+param.getP_id()+"&logChkNum="+param.getLogChkNum());
		else
			param.setUrl(param.getMenu()+"/"+param.getLogCommand()+"?logChkNum="+param.getLogChkNum());
		
		return true;
	}
}
