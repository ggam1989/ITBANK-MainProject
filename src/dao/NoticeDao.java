package dao;

import java.io.File;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;







import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDao {
//sqlSession 클래스임
	@Autowired
	SqlSessionTemplate sqlsessionTemplate;
	
	String mapper="dao.Test2Mapper.";
	
	public int listCount(ParamBean bean)
	{
		return sqlsessionTemplate.selectOne(mapper+"listCount",bean);
		
	}
	
	public List boardList(ParamBean bean)
	{

		bean.setStart((bean.getPage()-1)*bean.getLimit()+1);
		bean.setEnd(bean.getStart()+bean.getLimit()-1);
			
			return sqlsessionTemplate.selectList(mapper+"boardList",bean);
			
	}
		
	public void addCount(ParamBean bean)
	{
		sqlsessionTemplate.update(mapper+"addCount",bean);
	}
	
	
	public Object boardDetail(ParamBean bean)
	{
		
		return sqlsessionTemplate.selectOne(mapper+"boardDetail",bean);

	}
	
	public int boardWrite(ParamBean bean)
	{
		
		Integer id =sqlsessionTemplate.selectOne(mapper+"maxId",bean);
		id = id==null ? 0 : id;
		
		
		bean.setId( id+1);

		bean.setGid(bean.getId());
		bean.setSeq(0);
		bean.setRef(0);
		int res =sqlsessionTemplate.insert(mapper+"boardWrite",bean);
		
		if(res!=0)
			return bean.getId();
		
		return 0;
	}
	
	
	public boolean boardPw(ParamBean bean)
	{

		return 0 < (int)sqlsessionTemplate.selectOne(mapper+"boardPw",bean);
	}
	
	
	public boolean boardFileDelete(ParamBean bean)
	{

		ParamBean delfile= sqlsessionTemplate.selectOne(mapper+"boardDetail",bean);
			 
		String fileName =delfile.getUpfile();
		if(fileName == null || fileName.equals(""))
			return false;
			
		File file = new File(bean.getPath()+fileName);
		file.delete();
		
		bean.setUpfile("");
		return sqlsessionTemplate.update(mapper+"boardFileDelete",bean)>0;
		
	}
	
	
	public boolean boardDelete(ParamBean bean)
	{
		boardFileDelete(bean);
		return sqlsessionTemplate.delete(mapper+"boardDelete",bean)>0;
	}
	
	
	public boolean boardModify(ParamBean bean)
	{
			
		return sqlsessionTemplate.update(mapper+"boardModify",bean)>0;
	}
	
	
	public int boardReply(ParamBean bean)
	{
					
		ParamBean pp = (ParamBean)boardDetail(bean);
		pp.setMenu(bean.getMenu());
		
		sqlsessionTemplate.update(mapper+"boardReply",pp);
		
		int id =sqlsessionTemplate.selectOne(mapper+"maxId",bean);
		
		bean.setId(id+1);
		bean.setGid(pp.getGid());
		bean.setSeq(pp.getSeq()+1);
		bean.setRef(pp.getRef()+1);
		//bean.setUpfile("");

		int res =sqlsessionTemplate.insert(mapper+"boardWrite",bean);
		
		if(res!=0)
			return bean.getId();
		
		return 0;
	
	}
	
}
