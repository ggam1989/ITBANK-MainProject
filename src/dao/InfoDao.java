package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InfoDao{
	
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	
	//my
	public int payment(ParamBean bean)
	{
		return sqlsessionTemplate.insert(mapper+"payment",bean);
	}
	
	public List myDetail(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"myDetail",bean);
	}
	
	public boolean myModify(ParamBean bean)
	{
			
		return sqlsessionTemplate.update(mapper+"myModify",bean)>0;
	}
	
	public boolean myDelete(ParamBean bean)
	{
		return sqlsessionTemplate.delete(mapper+"myDelete",bean)>0;
	}

	public int myWrite(ParamBean bean)
	{
		int res = sqlsessionTemplate.insert(mapper+"myWrite",bean);
		
		if(res!=0)
			return 1;
		else
			return 2;
	}
	
	public boolean sendreg(ParamBean bean)
	{
		return sqlsessionTemplate.update(mapper+"sendreg",bean)>0;
	}
	
	public String id_Check(ParamBean bean)
	{System.out.println(bean.getJ_id()+"3");
		ParamBean pp = sqlsessionTemplate.selectOne(mapper+"id_Check",bean);
		
		if(pp != null) {
			System.out.println("true");
			return null;
		} else 
			return bean.getJ_id();
	
	}
	
	
	
	
	public int loginChk(ParamBean bean)
	{
	ParamBean pbd = sqlsessionTemplate.selectOne(mapper+"loginChk",bean);
		
		if (pbd != null && pbd.getPass().equals(bean.getPass())){
			
			if(pbd.getJ_id()=="admin" && pbd.getPass().equals(bean.getPass()))
				return 7;
			else
				return 1;
		}else
			return 2;
	}
	
}