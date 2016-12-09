package person.jarvis.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import person.jarvis.dao.EnrolleeDao;
import person.jarvis.entity.Enrollee;
import person.jarvis.service.EnrolleeService;
import person.jarvis.utils.CommonUtils;

public class EnrolleeServiceImpl implements EnrolleeService {
	@Resource
	EnrolleeDao enrolleeDao;

	@Override
	public int addEnrollee(Enrollee enrollee) {
		if (enrollee == null)
			return 0;
		if (enrollee.getGuid() == null) {
			enrollee.setGuid(CommonUtils.getGuid());
		}
		enrollee.setTime(new Date());
		return enrolleeDao.addEnrollee(enrollee);
	}

}
