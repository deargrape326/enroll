package person.jarvis.dao;

import java.util.List;

import org.jfaster.mango.annotation.DB;
import org.jfaster.mango.annotation.ReturnGeneratedId;
import org.jfaster.mango.annotation.SQL;

import person.jarvis.entity.Test;

@DB
public interface TestDao {

	@ReturnGeneratedId
	@SQL("insert into test(name) values(:1)")
	public int addTest(String name);
	
	@SQL("select * from test where 1=1 "
			+ "#if(:1!=null&&:1!='') and :1 like concat(name,'%') #end")
	public List<Test> queryTestListByName(String name);
}
