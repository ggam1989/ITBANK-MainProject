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
		//p_num이 있으면 ppp가 0이 아닐꺼얌 0이면 없으니까 인서트하자
		ppp = ppp==null? 0 : ppp;

		if(ppp==0){	//p_num 널이랜다 인서트하자	
			bean.setCartchk(0);
			System.out.println("cartchk : "+bean.getCartchk());
			res = sqlsessionTemplate.insert(mapper+"cartIn",bean);
		}else{	//p_num 널아니래 이미있대 수량만 바꺼서 업데이트하장
			ppp += bean.getP_num();
		bean.setP_num(ppp);
		res = sqlsessionTemplate.update(mapper+"cartppp",bean);
		}	
		if(res!=0)//다했당 1넣어준다 트루다
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