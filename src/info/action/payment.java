package info.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.CartDao;
import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class payment implements Action {

	@Autowired
	InfoDao dao;

	@Autowired
	CartDao dao2;
	@Override
	public boolean execute(ParamBean bean) throws Exception {
		// TODO Auto-generated method stub
		
		
		Method m;
		System.out.println(bean.getChknum());
		if(bean.getChknum()!=null && bean.getChknum()==1){
			m = dao.getClass().getDeclaredMethod(bean.getCommand(), ParamBean.class);
			m.invoke(dao, bean);
			//dao - infodao에서 receive 테이블에 인서트해주자 
			
	  		m = dao2.getClass().getDeclaredMethod("paymentcart", ParamBean.class);
			m.invoke(dao2, bean);
	/*		chacknum을 1로 넣겟지 dao2-cartdao에서 cart테이블의 chacknum을 1로 업데이트 해주자 필요한거 - j_id*/
		}
		
//		m = dao2.getClass().getDeclaredMethod("oneandfive", ParamBean.class);
//		bean.setData(m.invoke(dao2, bean));
		
		
		bean.setData(dao2.oneandfive(bean));
		System.out.println(bean.getData());
		return false;
	}

}
