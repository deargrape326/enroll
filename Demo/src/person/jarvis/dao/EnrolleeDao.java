package person.jarvis.dao;

import org.jfaster.mango.annotation.DB;
import org.jfaster.mango.annotation.ReturnGeneratedId;
import org.jfaster.mango.annotation.SQL;

import person.jarvis.entity.Enrollee;

@DB
public interface EnrolleeDao {
	@ReturnGeneratedId
	@SQL("insert into enrollee(guid, name, province, city, county, town, village, address, tel, school, time)"
			+ "values(:guid, :name, :province, :city, :county, :town, :village, :address, :tel, :school, :time)")
	public int addEnrollee(Enrollee enrollee);
}
