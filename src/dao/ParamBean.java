package dao;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("bean")
public class ParamBean {
	String menu,command,pname,pw,title,content,upfile="",url,path, ponefile="", ptwofile="",reOes;
	private boolean isClosing = true, isOes=false;
	Integer page=1, limit, maxPage, startPage, endPage,cnt,id,gid,seq,ref,last,start,end;
	Object data;
	Object cartdata, joindata;
	
	Object procg,promenu;

	MultipartFile up,proupc,proupd;
	
	boolean extImg;
	Date reg_date;
	
	String en_upfile,detail_content, good, good_d, p_intro, c_id ;
	
	//디비에 regdate
	String reg_date_str;
	SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd HH:mm:ss.SSS");
	

	Integer p_id, price, sale, cartcoin, p_num, cartchk, money, chknum;

	String name, address, email, sex, pic, en_pic;
	int birth, phone;
	
	
	public String getReg_date_str() {
		return sdf.format(reg_date);
	}

	public void setReg_date_str(String reg_date_str) {
		try {
			this.reg_date = sdf.parse(reg_date_str);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	public String getReOes() {
		return reOes;
	}

	public void setReOes(String reOes) {
		this.reOes = reOes;
	}

	public boolean isOes() {
		return isOes;
	}

	public void setOes(boolean isOes) {
		this.isOes = isOes;
	}

	//로그인 체크용
	private String j_id, pass, logCommand;
	//로그인 체크용 0기본 , 1성공, 2실패
	private Integer logChkNum = 0;
	
	//장바구니 체크용 0기본 1쇼핑계속 2장바구니
	private Integer cartNum = 0;
	
	public Object getCartdata() {
		return cartdata;
	}

	public Integer getChknum() {
		return chknum;
	}

	public void setChknum(Integer chknum) {
		this.chknum = chknum;
	}

	public void setCartdata(Object cartdata) {
		this.cartdata = cartdata;
	}

	public Object getJoindata() {
		return joindata;
	}

	public void setJoindata(Object joindata) {
		this.joindata = joindata;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public Integer getCartchk() {
		return cartchk;
	}

	public void setCartchk(Integer cartchk) {
		this.cartchk = cartchk;
	}

	public Object getProcg() {
		return procg;
	}

	public void setProcg(Object procg) {
		this.procg = procg;
	}

	public Object getPromenu() {
		return promenu;
	}

	public void setPromenu(Object promenu) {
		this.promenu = promenu;
	}

private HttpSession session;


public Integer getP_num() {
	return p_num;
}

public void setP_num(Integer p_num) {
	this.p_num = p_num;
}

public String getMenu() {
	return menu;
}

public void setMenu(String menu) {
	this.menu = menu;
}

public String getCommand() {
	return command;
}

public void setCommand(String command) {
	this.command = command;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public String getPw() {
	return pw;
}

public void setPw(String pw) {
	this.pw = pw;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getContent() {
	return content;
}

public void setContent(String content) {
	this.content = content;
}

public String getUpfile() {
	if (upfile.equals("null") || upfile==null || upfile.equals(""))
		return "";
	return upfile;
}

public void setUpfile(String upfile) {
	this.upfile = upfile;
}

public String getPonefile() {
	if (ponefile.equals("null") || ponefile==null || ponefile.equals(""))
		return "";
	return ponefile;
}

public void setPonefile(String ponefile) {
	this.ponefile = ponefile;
}

public String getPtwofile() {
	if (ptwofile.equals("null") || ptwofile==null || ptwofile.equals(""))
		return "";
	return ptwofile;
}
public void setPtwofile(String ptwofile) {
	this.ptwofile = ptwofile;
}

public String getUrl() {
	return url;
}

public void setUrl(String url) {
	this.url = url;
}

public String getPath() {
	return path;
}

public void setPath(String path) {
	this.path = path;
}

public boolean isClosing() {
	return isClosing;
}

public void setClosing(boolean isClosing) {
	this.isClosing = isClosing;
}

public Integer getPage() {
	return page;
}

public void setPage(Integer page) {
	this.page = page;
}

public Integer getLimit() {
	return limit;
}

public void setLimit(Integer limit) {
	this.limit = limit;
}

public Integer getMaxPage() {
	return maxPage;
}

public void setMaxPage(Integer maxPage) {
	this.maxPage = maxPage;
}

public Integer getStartPage() {
	return startPage;
}

public void setStartPage(Integer startPage) {
	this.startPage = startPage;
}

public Integer getEndPage() {
	return endPage;
}

public void setEndPage(Integer endPage) {
	this.endPage = endPage;
}

public Integer getCnt() {
	return cnt;
}

public void setCnt(Integer cnt) {
	this.cnt = cnt;
}

public Integer getId() {
	return id;
}

public void setId(Integer id) {
	this.id = id;
}

public Integer getGid() {
	return gid;
}

public void setGid(Integer gid) {
	this.gid = gid;
}

public Integer getSeq() {
	return seq;
}

public void setSeq(Integer seq) {
	this.seq = seq;
}

public Integer getRef() {
	return ref;
}

public void setRef(Integer ref) {
	this.ref = ref;
}

public Integer getLast() {
	return last;
}

public void setLast(Integer last) {
	this.last = last;
}

public Integer getStart() {
	return start;
}

public void setStart(Integer start) {
	this.start = start;
}

public Integer getEnd() {
	return end;
}

public void setEnd(Integer end) {
	this.end = end;
}

public Object getData() {
	return data;
}

public void setData(Object data) {
	this.data = data;
}

public MultipartFile getUp() {
	return up;
}

public void setUp(MultipartFile up) {
	this.up = up;
}

public MultipartFile getProupc() {
	return proupc;
}

public void setProupc(MultipartFile proupc) {
	this.proupc = proupc;
}

public MultipartFile getProupd() {
	return proupd;
}

public void setProupd(MultipartFile proupd) {
	this.proupd = proupd;
}

public boolean getExtImg() {
	String ext =  upfile.substring(upfile.lastIndexOf(".")+1).toLowerCase();
	return ext.equals("jpg") || ext.equals("gif") || ext.equals("bmp") || ext.equals("png");
}

public void setExtImg(boolean extImg) {
	this.extImg = extImg;
}

public Date getReg_date() {
	return reg_date;
}

public void setReg_date(Date reg_date) {
	this.reg_date = reg_date;
}

public String getEn_upfile() {
	String res="";
	try {
		res= URLEncoder.encode(upfile, "euc-kr");
		res = res.replace("+", " ");
	} catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return res;
}

public void setEn_upfile(String en_upfile) {
	this.en_upfile = en_upfile;
}

public String getDetail_content() {
	return content.replace("\r\n", "<br>");
}

public void setDetail_content(String detail_content) {
	this.detail_content = detail_content;
}

public String getGood() {
	return good;
}

public void setGood(String good) {
	this.good = good;
}

public String getGood_d() {
	return good_d;
}

public void setGood_d(String good_d) {
	this.good_d = good_d;
}

public String getP_intro() {
	return p_intro;
}

public void setP_intro(String p_intro) {
	this.p_intro = p_intro;
}

public String getC_id() {
	return c_id;
}

public void setC_id(String c_id) {
	this.c_id = c_id;
}

public Integer getP_id() {
	return p_id;
}

public void setP_id(Integer p_id) {
	this.p_id = p_id;
}

public Integer getPrice() {
	return price;
}

public void setPrice(Integer price) {
	this.price = price;
}

public Integer getSale() {
	return sale;
}

public void setSale(Integer sale) {
	this.sale = sale;
}

public Integer getCartcoin() {
	return cartcoin;
}

public void setCartcoin(Integer cartcoin) {
	this.cartcoin = cartcoin;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getSex() {
	return sex;
}

public void setSex(String sex) {
	this.sex = sex;
}

public String getPic() {
	if (pic.equals("null") || pic==null || pic.equals(""))
		return "";
	return pic;
}

public void setPic(String pic) {
	this.pic = pic;
}

public String getEn_pic() {
	return en_pic;
}

public void setEn_pic(String en_pic) {
	this.en_pic = en_pic;
}

public int getBirth() {
	return birth;
}

public void setBirth(int birth) {
	this.birth = birth;
}

public int getPhone() {
	return phone;
}

public void setPhone(int phone) {
	this.phone = phone;
}

public String getJ_id() {
	return j_id;
}

public void setJ_id(String j_id) {
	this.j_id = j_id;
}

public String getPass() {
	return pass;
}

public void setPass(String pass) {
	this.pass = pass;
}

public String getLogCommand() {
	return logCommand;
}

public void setLogCommand(String logCommand) {
	this.logCommand = logCommand;
}

public Integer getLogChkNum() {
	return logChkNum;
}

public void setLogChkNum(Integer logChkNum) {
	this.logChkNum = logChkNum;
}

public Integer getCartNum() {
	return cartNum;
}

public void setCartNum(Integer cartNum) {
	this.cartNum = cartNum;
}

public HttpSession getSession() {
	return session;
}

public void setSession(HttpSession session) {
	this.session = session;
}

	
}
