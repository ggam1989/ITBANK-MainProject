package dao;

import org.springframework.stereotype.Component;

@Component
public class BeanConvert {

	
	public void beanconvert(ParamBean bean, ParamBean data)
	{
		bean.setPname(data.getPname());
		bean.setTitle(data.getTitle());
		bean.setContent(data.getContent());
		bean.setUpfile(data.getUpfile());
		bean.setReg_date(data.getReg_date());
		bean.setCnt(data.getCnt());
	}
}
