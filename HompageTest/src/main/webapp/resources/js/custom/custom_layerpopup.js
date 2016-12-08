/**
 * 
 */

function custom_layerOpen(requesturl, requestParam, modalObject, contentId)
{
	//00.테스트 코드
	
	//1. url 해당하는 페이지 로드(ajax)
	$.post(requesturl, requestParam, function(data)
	{
		//2. target 요소에 페이지 내용 삽입
		document.getElementById(contentId).innerHTML=data;
	});
	
	//3. modal 띄우기 및 여러 설정
	modalObject.modal('show');
	
	
}

function custom_layerClose(modalObject)
{
	//1. 레이어 창 닫기(display: none)
	modalObject.modal('hide');
	
	//2. 내용 파기(targetObj.html())
	modalObject.html("");
}

