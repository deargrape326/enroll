package person.jarvis.service;

import java.util.List;

import javax.annotation.Resource;

import person.jarvis.entity.Location;

@Resource(name="addressService")
public interface AddressService {
	public List<Location> queryProvinceList();

	public List<Location> queryCityList(int province_id);

	public List<Location> queryCountyList(int city_id);

	public List<Location> queryTownList(int county_id);

	public List<Location> queryVillageList(int town_id);

	public List<Location> queryLocationList(Integer type, String parent_id);
}
