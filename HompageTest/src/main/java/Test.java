import megabox.com.util.XmlToMapConverter;

public class Test {

	public static void main(String[] args) {
		/*
		MemberVO vo=new MemberVO();
		vo.setMem_webid("admin");
		vo.setMem_pw("abcd123");
		
		MemberDAO dao=new MemberDAO();
		MemberVO result=dao.getMember(vo);
		
		System.out.println("result will print...");
		System.out.println("memberNo: "+result.getMem_no());*/
		
		try
		{
			XmlToMapConverter con=new XmlToMapConverter("src/main/resources/logMapper.xml");
		
		}catch(Exception e){System.out.println(e.toString());}
	}

}
