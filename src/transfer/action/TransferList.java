package transfer.action;

import java.lang.reflect.Method;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import dao.CartDao;
import dao.ParamBean;
import di.Action;

@Component
public class TransferList implements Action {

	@Autowired
	CartDao dao;

	public boolean execute(ParamBean param) throws Exception {
		// TODO Auto-generated method stub
		
		// 결제시 회원 이름 주소 전화번호 (receive테이블) 가져오고 배송하고(임의ㅠㅠㅋ) 배송중인 cartchk2를 가져와 배송완료체크인 cartchk를 3로 줄것.

		Method m = dao.getClass().getDeclaredMethod("transtwo", ParamBean.class);
		//2가꼬오자
		param.setCartdata(m.invoke(dao, param));
		
		return false;
	}

}
