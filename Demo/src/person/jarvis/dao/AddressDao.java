package person.jarvis.dao;

import java.util.List;

import org.jfaster.mango.annotation.DB;
import org.jfaster.mango.annotation.SQL;

import person.jarvis.entity.Location;

@DB
public interface AddressDao {
	
	@SQL("select 'province' as type, province_id as id, province_name as name from province")
	public List<Location> queryProvinceList();
	
	@SQL("select 'city' as type, city_id as id, city_name as name from city "
			+ "where province_id = :1")
	public List<Location> queryCityList(String province_id);
	
	@SQL("select 'county' as type, county_id as id, county_name as name from county "
			+ "where city_id = :1")
	public List<Location> queryCountyList(String city_id);
	
	@SQL("select 'town' as type, town_id as id, town_name as name from town "
			+ "where county_id = :1")
	public List<Location> queryTownList(String county_id);
	
	@SQL("select 'village' as type, village_id as id, village_name as name from village "
			+ "where town_id = :1")
	public List<Location> queryVillageList(String town_id);
}
