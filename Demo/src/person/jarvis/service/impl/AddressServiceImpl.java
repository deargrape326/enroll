package person.jarvis.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import person.jarvis.dao.AddressDao;
import person.jarvis.entity.Location;
import person.jarvis.service.AddressService;

public class AddressServiceImpl implements AddressService {
	private static final int PROVINCE = 0;
	private static final int CITY = 1;
	private static final int COUNTY = 2;
	private static final int TOWN = 3;
	private static final int VILLAGE = 4;
	
	@Resource
	AddressDao addressDao;

	@Override
	public List<Location> queryProvinceList() {
		List<Location> list = addressDao.queryProvinceList();
		return list;
	}

	@Override
	public List<Location> queryCityList(int province_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> queryCountyList(int city_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> queryTownList(int county_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> queryVillageList(int town_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Location> queryLocationList(Integer type, String parent_id) {
		List<Location> list = new ArrayList<Location>(1);
		switch (type) {
		case PROVINCE:
			list = addressDao.queryProvinceList();
			break;
		case CITY:
			list = addressDao.queryCityList(parent_id);
			break;
		case COUNTY:
			list = addressDao.queryCountyList(parent_id);
			break;
		case TOWN:
			list = addressDao.queryTownList(parent_id);
			break;
		case VILLAGE:
			list = addressDao.queryVillageList(parent_id);
			break;
		}
		return list;
	}

}
