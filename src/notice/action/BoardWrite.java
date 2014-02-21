package notice.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.NoticeDao;
import dao.ParamBean;
import di.Action;


@Component
public class BoardWrite implements Action{

	@Autowired
	NoticeDao dao;
	
	@Override
	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		param.setUpfile("");
				
		
				if(!param.getUp().isEmpty())
					new FileUpLoad().fileReName(param);
				
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
		
		param.setUrl(param.getMenu()+"/boardDetail?id="+m.invoke(dao, param));
		return true;
	}
}
