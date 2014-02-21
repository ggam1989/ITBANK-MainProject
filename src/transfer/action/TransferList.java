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
		
		// ������ ȸ�� �̸� �ּ� ��ȭ��ȣ (receive���̺�) �������� ����ϰ�(���ǤФФ�) ������� cartchk2�� ������ ��ۿϷ�üũ�� cartchk�� 3�� �ٰ�.

		Method m = dao.getClass().getDeclaredMethod("transtwo", ParamBean.class);
		//2��������
		param.setCartdata(m.invoke(dao, param));
		
		return false;
	}

}
