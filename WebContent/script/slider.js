$(document).ready(function(){
	//��ȡͼƬ������
	var len = $('.bannerbtn ul li').length;
	// ����ͼƬ����
	var index = 0;
	//����һ����ʱ��
	var timer;
	
	$(".bannerbtn ul li a").mouseover(function(){
		index  =   $(".bannerbtn ul li").index($(this).parent());
		showImg(index);
	 }).eq(0).mouseover();
	
	$('.picbox').hover(function(){
			 clearInterval(timer);
		 },function(){
			 timer = setInterval(function(){
			    showImg(index)
				index++;
				if(index==len){
					index=0;
				}
			  } , 8000);
	 }).trigger("mouseleave");
	
});

// ͨ������top ������ʾ��ͬ�Ļõ�Ƭ
function showImg(index){
        var height = $(".bannerpic").height();
		$("#slider").stop(true,false).animate({top: -height*index},1000);
		$(".bannerbtn ul li a:first-child").removeClass("on").eq(index).addClass("on");
}