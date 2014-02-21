var hhrr = null;//전역변수

function getXml()
{
	if(window.ActiveXObject){//IE
		try{
			return new ActiveXObject("Msxml12.XMLHTTP");
		}catch(e)
		{
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch (ee) {
				return null;
			}
		}
		
	}else if(window.XMLHttpRequest){//IE 제외한 파폭, 사파리, 오페라 등등등
		return new XMLHttpRequest();
	}
}

function load(url, params, callback, method)
{
	hhrr = getXml();
	
	var hrMethod = method ? method : 'GET';
	if(hrMethod!='GET' && hrMethod!= 'POST')
		hrMethod = 'GET';
	
	var hrParams = (params==null || params=='') ? null : params;
	
	var hrUrl = url;
	
	if(hrMethod=='GET'&& hrMethod!=null)
		hrUrl = hrUrl+"?"+hrParams;
	
	hhrr.open(hrMethod, hrUrl, true);
	//h_r.open("Get", url, true);	
	hhrr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	
	hhrr.onreadystatechange = callback;
	
	hhrr.send(hrMethod=='POST' ? hrParams : null);
	// "name=aaa&pw=1111"
}