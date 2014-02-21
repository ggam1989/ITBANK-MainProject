package cart.action;

import java.lang.reflect.Method;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.CartDao;
import dao.InfoDao;
import dao.ParamBean;
import di.Action;

@Component
public class MoneyList implements Action {

	@Autowired
	InfoDao dao;
	
	@Autowired
	CartDao dao2;
	
	public boolean execute(ParamBean param) throws Exception {
		
		System.out.println(param.getMoney());
		System.out.println("여기오냐");

		param.setJ_id((String)param.getSession().getAttribute("sid"));
		//아이디 받아 가입시 회원 이름 주소 전화번호 가져오고 총결제액 결제. 결제시 결제cartchk를 1로 줄것.

		Method m = dao.getClass().getDeclaredMethod("myDetail", ParamBean.class);
		
		param.setJoindata(m.invoke(dao, param));
		
		m = dao2.getClass().getDeclaredMethod("cartList", ParamBean.class);
		
		param.setCartdata(m.invoke(dao2, param));
		
		return false;
	}

}


/*	ADMIN_Transfer---------------------------------------------------------------

public List transferList(ParamBean bean)
{	//2번인거 가져온다.
	return sqlsessionTemplate.selectList(mapper+"transferList",bean);
}*/

