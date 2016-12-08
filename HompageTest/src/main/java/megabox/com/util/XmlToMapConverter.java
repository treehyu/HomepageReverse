package megabox.com.util;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XmlToMapConverter {
	
	private Map<String, String> logMap;
	
	public XmlToMapConverter(String xmlDir)
			throws IOException, SAXException, ParserConfigurationException
	{
		logMap=new HashMap<String, String>();
		xmlToMap(xmlDir);
	}
	
	private void xmlToMap(String xmlDir)
			throws IOException, SAXException, ParserConfigurationException
	{
		//xml 파일 불러오기
		Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new File(xmlDir));

		//노드리스트 생성
		NodeList nodeList=document.getElementsByTagName("log");
		
		//맵구조로 변환
		for(int i=0; i<nodeList.getLength(); i++)
		{
			Element e=(Element)nodeList.item(i);
			logMap.put(e.getElementsByTagName("codeNo").item(0).getTextContent(), e.getElementsByTagName("msg").item(0).getTextContent());
		}
		
	}
	
	
	public Map<String, String> getLogMap()
	{
		return logMap;
	}
	
	public String getMsg(String code)
	{
		return logMap.get(code);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
