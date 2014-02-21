package dao;

import org.springframework.stereotype.Component;

@Component
public class BeanConvertPro {

	
	public void beanconvertpro(ParamBean bean, ParamBean data)
	{
		bean.setP_id(data.getP_id());
		bean.setC_id(data.getC_id());
		bean.setGood(data.getGood());
		bean.setGood_d(data.getGood_d());
		bean.setP_intro(data.getP_intro());
		bean.setPrice(data.getPrice());
		bean.setCnt(data.getCnt());
		bean.setSale(data.getSale());
		bean.setCartcoin(data.getCartcoin());
		bean.setContent(data.getContent());
	}
}
