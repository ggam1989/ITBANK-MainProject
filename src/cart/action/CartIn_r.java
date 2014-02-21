package cart.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.BeanConvertPro;
import dao.CartDao;
import dao.ParamBean;
import di.Action;

@Component
public class CartIn_r implements Action {

	@Autowired
	CartDao dao;
	
	@Autowired
	BeanConvertPro con;
	
	public boolean execute(ParamBean param) throws Exception {

		System.out.println("p_id : "+param.getP_id());
		
		Method m;
		
		param.setJ_id((String)param.getSession().getAttribute("sid"));
		System.out.println("j_id : "+param.getJ_id());
		System.out.println("p_num : "+param.getP_num());

		param.setP_num(param.getP_num());
		
		m = dao.getClass().getDeclaredMethod("cartListpnum", ParamBean.class);
		m.invoke(dao, param);
		
		param.setUrl("cart/cartList?j_id="+param.getJ_id());

		//�󸸵� �Ķ���ͺ����� ��ٱ��� ������ �Լ��ϳ� �� ���������(�����Ͽ���) ---> ��ٱ��Ϸ� �̵��Ҳ��� �߰��ҷ���.
		
		return true;
	}

}
