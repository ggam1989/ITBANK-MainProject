package dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao{
	
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	public int listCount(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"listCount",bean);
	}
	
	public void addCountP(ParamBean bean)
	{
		sqlsessionTemplate.update(mapper+"addCountP",bean);
	}
	
	public List productList(ParamBean bean)
	{
		if(bean.getContent().equals(null)||bean.getContent().equals(""))
			return sqlsessionTemplate.selectList(mapper+"productListTop",bean);
		else
		return sqlsessionTemplate.selectList(mapper+"productList",bean);
	}
	public List procg(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"procg",bean);
	}
	public List promenu(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"promenu",bean);
	}
	
	public Object productDetail(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"productDetail",bean);
	}
	
	
	
}