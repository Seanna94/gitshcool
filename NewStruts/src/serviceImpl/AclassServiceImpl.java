package serviceImpl;

import java.util.Date;

import pojo.Aclass;
import service.AclassService;
import service.ServiceBase;


public class AclassServiceImpl extends ServiceBase implements AclassService {

	@Override
	public void addAclass(Aclass aclass) throws Exception {
		int lastid=aclassDao.add(aclass);
		
	}



}

