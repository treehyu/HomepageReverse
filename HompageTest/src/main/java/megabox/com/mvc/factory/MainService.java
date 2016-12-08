package megabox.com.mvc.factory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import megabox.com.mvc.vo.MemberVO;

@Service
public class MainService implements IMainService {
	
	@Autowired 
	private IMemberDAO member;
	@Autowired
	private ILogmapDAO logmap;
	
	public MemberVO login(MemberVO vo) 
	{	
		return member.login(vo);
	}
	
	public MemberVO getMemberInfo(MemberVO vo) 
	{
		return member.getMemberInfo(vo);
	}
	
	public String getLog(String codeNo)
	{
		return logmap.getMsg(codeNo);
	}
	
	

}
