<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>搜索结果</title>
<meta name="keywords" content="生物技术系,生物医学工程"/>
<meta name="description" content="招生信息本科,硕士,博士,专业学位,继续教育,人才培养院士,长江学者,特聘教授,副教授"/>
<link href="${ctx}/template/css/all.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/template/css/index.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/template/css/style.css" type="text/css" rel="stylesheet" />
<script type=text/javascript src="${ctx}/template/js/jquery-1.3.2.min.js"></script>
<script type=text/javascript src="${ctx}/template/js/lmsf.js"></script>
<script type=text/javascript src="${ctx}/script/setHome.js"></script>
<!--[if lte IE 6]>
<script src="${ctx}/template/js/iepng.js" type="text/javascript"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('div, ul, img, li, input , a ,span');
    </script>
<![endif]--> 
</head>
<body>
<%@include file="/upload/top.html"%>
<!--wrap-->
<div id="wrap">
    <div id="main">
      <div class="mainlmbg"><span>搜索结果</span></div>
      <div class="newscolumn">
            <ul>
				<c:forEach var="article" items="${articles}">
					<li><span><fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd"/></span><a href="${ctx}/article/detail?nav=102&model=103&article=${article.id}" style='color:${article.color}'>${article.title}</a></li>
				</c:forEach>
            </ul>
      </div>
        <div class="page">
			<script>
				var pg = new showPages('pg');
				pg.pageCount = ${maxPage};
				pg.argName = 'currentPage';
				pg.printHtml();  
			</script>
        </div>
    </div>
    <div id='right2'>
		<img src='${ctx}/template/images/rightbannerpic.jpg' width="200"/>
	</div>
</div>
<!--wrap_End-->
<%@include file="/upload/bottom.html"%>
</body>
</html>
