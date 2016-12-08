package megabox.com.mvc.factory;

import megabox.com.mvc.vo.MemberVO;

public interface IMainService {

	public MemberVO login(MemberVO vo);
	public MemberVO getMemberInfo(MemberVO vo);
	public String getLog(String codeNo);
}
