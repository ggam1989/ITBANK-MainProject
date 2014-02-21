package dao;

import org.springframework.stereotype.Component;

@Component
public class BeanConvertJoin {

	
	public void beanconvertjoin(ParamBean bean, ParamBean data)
	{
		bean.setName(data.getName());
		bean.setJ_id(data.getJ_id());
		bean.setPass(data.getPass());
		bean.setEmail(data.getEmail());
		bean.setAddress(data.getAddress());
		bean.setBirth(data.getBirth());
		bean.setSex(data.getSex());
		bean.setPhone(data.getPhone());
	}
}
