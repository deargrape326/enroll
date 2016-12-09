package person.jarvis.service;

import javax.annotation.Resource;

import person.jarvis.entity.Enrollee;

@Resource
public interface EnrolleeService {
	public int addEnrollee(Enrollee enrollee);
}
