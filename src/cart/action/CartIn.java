package cart.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.BeanConvertPro;
import dao.CartDao;
import dao.ParamBean;
import di.Action;

@Component
public class CartIn implements Action {

	@Autowired
	CartDao dao;
	
	@Autowired
	BeanConvertPro con;
	
	public boolean execute(ParamBean param) throws Exception {

		System.out.println("p_id : "+param.getP_id());
		System.out.println("c_id : "+param.getC_id());
		param.setChknum(0);

		Method m = dao.getClass().getDeclaredMethod("productDetail", ParamBean.class);
//		m.invoke(dao,param);
		con.beanconvertpro(param, (ParamBean)m.invoke(dao, param));
		
		System.out.println("p_intro : "+param.getP_intro());
		
		param.setJ_id((String)param.getSession().getAttribute("sid"));
		System.out.println("j_id : "+param.getJ_id());

		System.out.println("p_num : "+param.getP_num());
		param.setP_num(param.getP_num());
		m = dao.getClass().getDeclaredMethod(param.getCommand(), ParamBean.class);
		m.invoke(dao, param);
		
		param.setUrl("product"+"/productDetail?p_id="+param.getP_id()+"&c_id="+param.getC_id());

		//빈만들어서 파라메터보내서 장바구니 보내는 함수하나 더 만들어주자(디테일에다) ---> 장바구니로 이동할꺼냐 뜨게할려면.
		
		return true;
	}

}
