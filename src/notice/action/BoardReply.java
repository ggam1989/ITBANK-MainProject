package notice.action;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



import dao.NoticeDao;

import dao.ParamBean;
import di.Action;


@Component
public class BoardReply implements Action{

	@Autowired
	NoticeDao dao;
	@Override
	public boolean execute( ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		
		Method m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		
	    if(param.getLast()!=null)
	          param.setPage(param.getLast());


		param.setUrl(param.getMenu()+"/boardDetail?id="+m.invoke(dao, param)+"&page="+param.getPage());
		return true;
	}
}
