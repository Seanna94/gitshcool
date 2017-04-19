package serviceImpl;

import java.util.Date;

import dao.TeacherDAO;

import pojo.Teacher;
import service.ServiceBase;
import service.TeacherService;

public class TeacherServiceImpl extends ServiceBase implements TeacherService {

	@Override
	public void addTeacher(Teacher teacher) throws Exception {
		int lastid=teacherDao.add(teacher);
		

	}

}
