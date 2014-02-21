package di;

import dao.ParamBean;


public interface Action {

	public boolean execute(ParamBean param)throws Exception;
}
