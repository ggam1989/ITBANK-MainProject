package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CartDao{
	
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	
	
	//cart
	
	public int cartIn(ParamBean bean)
	{
		System.out.println("p_id : " + bean.getP_id());
		System.out.println("p_num : " + bean.getP_num());
		int res =0;
		
		Integer ppp = sqlsessionTemplate.selectOne(mapper+"chkppp",bean);
		//p_num�� ������ ppp�� 0�� �ƴҲ��� 0�̸� �����ϱ� �μ�Ʈ����
		ppp = ppp==null? 0 : ppp;

		if(ppp==0){	//p_num ���̷��� �μ�Ʈ����	
			bean.setCartchk(0);
			System.out.println("cartchk : "+bean.getCartchk());
			res = sqlsessionTemplate.insert(mapper+"cartIn",bean);
		}else{	//p_num �ξƴϷ� �̹��ִ� ������ �ٲ��� ������Ʈ����
			ppp += bean.getP_num();
		bean.setP_num(ppp);
		res = sqlsessionTemplate.update(mapper+"cartppp",bean);
		}	
		if(res!=0)//���ߴ� 1�־��ش� Ʈ���
		return res;
		
		return 0;
		
	}
	
	
	public int paymentcart(ParamBean bean)
	{
		return sqlsessionTemplate.update(mapper+"paymentcart",bean);
	}
	
	public int cartListpnum(ParamBean bean)
	{	
		return sqlsessionTemplate.update(mapper+"cartListpnum",bean);
	}
	
	public List cartList(ParamBean bean)
	{	
		return sqlsessionTemplate.selectList(mapper+"cartList",bean);
	}
	
	public List oneandfive(ParamBean bean)
	{	
		return sqlsessionTemplate.selectList(mapper+"oneandfive",bean);
	}
	
	public boolean cartOut(ParamBean bean)
	{
		return sqlsessionTemplate.delete(mapper+"cartOut",bean)>0;
	}
	
	public boolean cartOutOne(ParamBean bean)
	{
		return sqlsessionTemplate.delete(mapper+"cartOutOne",bean)>0;
	}
	

	public Object productDetail(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"productDetail",bean);
	}
	public List transtwo(ParamBean bean)
	{	
		return sqlsessionTemplate.selectList(mapper+"transtwo",bean);
	}
	
	
}