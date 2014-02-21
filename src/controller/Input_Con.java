package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ParamBean;
import di.Action;


@Component
@Controller
@RequestMapping("/{menu}/{command}")
public class Input_Con {
	
	boolean isClass(String command)
    {			
    	List noneClass = new  ArrayList();
    	noneClass.add("boardWriteForm");
    	noneClass.add("boardPwForm");	
    	noneClass.add("joinWriteForm");
    	noneClass.add("adminProNewppForm");
    	noneClass.add("adminProNewcc");
    	noneClass.add("adminProNewccForm");
    	noneClass.add("myWriteForm");
    	/*noneClass.add("id_CheckForm");*/
    	
    	
    	boolean res = !noneClass.contains(command);	
    	return res;
    }
	
	
	@RequestMapping()
	String goForm(@PathVariable String menu,@PathVariable String command,@ModelAttribute("bean") ParamBean bean,HttpSession session )
	{	
		System.out.println(command);
		String [] conf = {"xml/contextConfig.xml"};
		AbstractApplicationContext context =
				new ClassPathXmlApplicationContext(conf);
		
		bean.setMenu(menu);
		bean.setCommand(command);
				//bean.setJ_id((String)session.getAttribute("sid"));
		bean.setSession(session);
		
		
		String up = "view/"+bean.getMenu()+"/up/";
		
		System.out.println("setpath ±∏∫– c_id(null-notice¿« up) :"+bean.getC_id());
		if(bean.getC_id()==null){
			bean.setPath("D:/web_pro/spring_mybatis_mvc_10/WebContent/"+up);
		}
		
		String res = "../temp";
		
		if(isClass(command))
		{
	    	try {
	    		if(context.getBean(command, Action.class).execute( bean))
	    			res="redirect:/"+bean.getUrl();
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		if(bean.isOes())
			return bean.getReOes();
	
		return res;
	}
	
	

}
