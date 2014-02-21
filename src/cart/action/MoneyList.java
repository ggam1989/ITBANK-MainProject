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
		System.out.println("�������");

		param.setJ_id((String)param.getSession().getAttribute("sid"));
		//���̵� �޾� ���Խ� ȸ�� �̸� �ּ� ��ȭ��ȣ �������� �Ѱ����� ����. ������ ����cartchk�� 1�� �ٰ�.

		Method m = dao.getClass().getDeclaredMethod("myDetail", ParamBean.class);
		
		param.setJoindata(m.invoke(dao, param));
		
		m = dao2.getClass().getDeclaredMethod("cartList", ParamBean.class);
		
		param.setCartdata(m.invoke(dao2, param));
		
		return false;
	}

}


/*	ADMIN_Transfer---------------------------------------------------------------

public List transferList(ParamBean bean)
{	//2���ΰ� �����´�.
	return sqlsessionTemplate.selectList(mapper+"transferList",bean);
}*/

