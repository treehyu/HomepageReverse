/*
 * Spring으로 설정 옮김.(안씀)
 * */

package megabox.com.mvc.factory;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionFactoryBean {

	private SqlSessionFactory sessionFactory=null;
	
	public SqlSessionFactoryBean()
	{
		if(sessionFactory==null)
		{
			try
			{
				Reader reader=Resources.getResourceAsReader("mybatis-config.xml");
				sessionFactory=new SqlSessionFactoryBuilder().build(reader);
				
			}catch(Exception e){
				System.out.println(e);
			}
		}
	}
	
	public SqlSession getSqlSession()
	{
		return sessionFactory.openSession();
	}
	
	
	
}
