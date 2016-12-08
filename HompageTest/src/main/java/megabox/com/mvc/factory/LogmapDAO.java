package megabox.com.mvc.factory;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LogmapDAO implements ILogmapDAO {

	@Autowired
	SqlSessionTemplate sqlsession;
	
	public String getMsg(String codeNo) 
	{
		return sqlsession.selectOne("LogmapDAO.selectMsg", codeNo);
	}

}
