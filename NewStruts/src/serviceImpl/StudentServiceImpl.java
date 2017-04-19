package serviceImpl;

import pojo.Student;
import service.ServiceBase;
import service.StudentService;

public class StudentServiceImpl extends ServiceBase implements StudentService {

	@Override
	public void addStudent(Student student) throws Exception {
		int lastid=studentDao.add(student);
		
	}

}
