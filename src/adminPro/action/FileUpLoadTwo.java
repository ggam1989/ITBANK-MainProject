package adminPro.action;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Component;

import dao.ParamBean;

@Component
public class FileUpLoadTwo {

	public void fileReName(ParamBean bean) throws IOException
	{
		String proup = "view/product/"+bean.getC_id()+"/";
		
		bean.setPath("D:/web_pro/spring_mybatis_mvc_10/WebContent/"+proup);
		File newccc = new File(bean.getPath());
		if(!newccc.exists())
	        {
				newccc.mkdir();
	        }
		
		
		String name = bean.getProupd().getOriginalFilename();
		
			        
        File save_f = new File(bean.getPath()+name);
        String new_name = name.substring(0,name.lastIndexOf("."));
        String new_ext = name.substring(name.lastIndexOf("."));
        
        int no=0;
        
        while(save_f.exists())		//파일 중복 이름 변경
        {
          no++;
          name=new_name+"_"+no+new_ext;
          save_f = new File(bean.getPath()+name);
   
        }
 
        try {
			
			
			InputStream fis = bean.getProupd().getInputStream();
			FileOutputStream fos = new FileOutputStream(bean.getPath()+name);
			int data;
			
			while((data=fis.read())!=-1)
				fos.write(data);
			
			bean.setPtwofile(name);
			fos.close();
			fis.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     }      
    
  }


