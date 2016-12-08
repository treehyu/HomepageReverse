package megabox.com.mvc.factory;

import megabox.com.mvc.vo.MemberVO;

public interface IMemberDAO {
	
	public MemberVO login(MemberVO vo);
	public MemberVO getMemberInfo(MemberVO vo);
	public MemberVO joinMember(MemberVO vo);
	public MemberVO updateMember(MemberVO vo);
	public MemberVO retireMember(MemberVO vo);

}
