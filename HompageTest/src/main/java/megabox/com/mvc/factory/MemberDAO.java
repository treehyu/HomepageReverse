package megabox.com.mvc.factory;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import megabox.com.mvc.vo.MemberVO;

@Repository
public class MemberDAO implements IMemberDAO {

	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	public MemberVO login(MemberVO vo)
	{
		return (MemberVO)sessionTemplate.selectOne("MemberDAO.login", vo);
	}
	
	public MemberVO getMemberInfo(MemberVO vo)
	{
		return (MemberVO)sessionTemplate.selectOne("MemberDAO.getMemberInfo", vo);
	}

	public MemberVO joinMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public MemberVO updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	public MemberVO retireMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
