package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class JoinDao{
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	
	public List joinList(ParamBean bean)
	{
			return sqlsessionTemplate.selectList(mapper+"joinList",bean);
			
	}
	
	public Object joinDetail(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"joinDetail",bean);
	}
	
	public int joinWrite(ParamBean bean)
	{
		return sqlsessionTemplate.insert(mapper+"joinWrite",bean);
	}
	
	public boolean joinDelete(ParamBean bean)
	{
		return sqlsessionTemplate.delete(mapper+"joinDelete",bean)>0;
	}
	
	public boolean joinModify(ParamBean bean)
	{
			
		return sqlsessionTemplate.update(mapper+"joinModify",bean)>0;
	}

}