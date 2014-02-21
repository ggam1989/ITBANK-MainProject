package adminPro.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.AdminProDao;
import dao.ParamBean;
import di.Action;


@Component
public class AdminProNewWrite implements Action{

	@Autowired
	AdminProDao dao;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println(param.getProupc());
		System.out.println(param.getProupd());
		
		
		param.setPonefile("");
		param.setPtwofile("");
				if(!param.getProupc().isEmpty()){
					new FileUpLoadOne().fileReName(param);
				}
				if(!param.getProupd().isEmpty()){
					new FileUpLoadTwo().fileReName(param);
				}
		System.out.println(param.getPonefile());
		System.out.println(param.getPtwofile());
				
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		m.invoke(dao, param);
		
		param.setUrl("adminPro/adminProUp");
		return true;
	}
}
