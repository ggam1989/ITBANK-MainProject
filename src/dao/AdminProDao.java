package dao;

import java.io.File;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminProDao{
	
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	
/*	ADMIN_Product---------------------------------------------------------------*/
	
	public List adminProUp(ParamBean bean){
		return sqlsessionTemplate.selectList(mapper+"adminProUp",bean);
	}
	
	public boolean adminProUpdate(ParamBean bean){
		return sqlsessionTemplate.update(mapper+"adminProUpdate",bean)>0;
	}
	
	public Object adminProUpForm(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"adminProUpForm",bean);
	}
	
	public List adminProNewp(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"adminProNewp",bean);
	}
	
	public List adminProNewpp(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"adminProNewpp",bean);
	}
	
	public List adminProDelname(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"adminProDelname",bean);
	}
	
	public List adminProNewcc(ParamBean bean)
	{
		return sqlsessionTemplate.selectList(mapper+"adminProNewcc",bean);
	}
	
	public int adminProNewWrite(ParamBean bean)
	{
		
		Integer id =sqlsessionTemplate.selectOne(mapper+"maxPId",bean);
			id = id==null ? 0 : id;
			bean.setP_id(id+1);
		return sqlsessionTemplate.insert(mapper+"adminProNewWrite",bean);
	}
	
	public boolean adminProDelete(ParamBean bean)
	{	
		String up = "view/product/"+bean.getC_id()+"/";
		bean.setPath("D:/web_pro/spring_mybatis_mvc_10/WebContent/"+up);
		
		//p_id »Ì¾Æ¿Ã²¨¾ä
		ParamBean ppp = sqlsessionTemplate.selectOne(mapper+"adminProAll",bean);
		bean.setP_id(ppp.getP_id());
		
		//p_id ÀÇ Á¤º¸´Ù°¡Á®¿Õ
		ParamBean param = sqlsessionTemplate.selectOne(mapper+"adminProAll2",bean);
			 
		String good =param.getGood();
		if(good == null || good.equals(""))
			return false;
		
		String good_d =param.getGood_d();
		if(good_d == null || good_d.equals(""))
			return false;
		
		File file;
		file = new File(bean.getPath()+good);
			 file.delete();
		file = new File(bean.getPath()+good_d);
			 file.delete();
				
		return sqlsessionTemplate.delete(mapper+"adminProDelete",bean)>0;
		
	}


	/*	ADMIN_Gold,Trans---------------------------------------------------------------*/
	
	public List goldList(ParamBean bean)
	{	
		return sqlsessionTemplate.selectList(mapper+"goldList",bean);
	}
	
	public boolean goldRt(ParamBean bean){
		return sqlsessionTemplate.update(mapper+"goldRt",bean)>0;
	}
	
	public boolean goldcc(ParamBean bean){
		return sqlsessionTemplate.update(mapper+"goldcc",bean)>0;
	}
	
	public boolean transRt(ParamBean bean){
		return sqlsessionTemplate.update(mapper+"transRt",bean)>0;
	}

	
	/*	ADMIN_Send---------------------------------------------------------------*/

	public List sendList(ParamBean bean)
	{	
		return sqlsessionTemplate.selectList(mapper+"sendList",bean);
	}
	
}