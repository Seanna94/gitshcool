package serviceImpl;

import java.util.Date;


import pojo.Profession;

import service.ProfessionService;
import service.ServiceBase;


public class ProfessionServiceImpl extends ServiceBase implements ProfessionService {

	@Override
	public void addProfession(Profession profession) throws Exception {
		int lastid=professionDao.add(profession);
		
	}
	

	@Override
	public void findbyid(Profession profession) throws Exception {
		int findProfession=professionDao.findbyid(profession);
		
	}

}
