<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<!DOCtype html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>收集参数的表单页 </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<form id="form1" method="post" action="toRequest1.jsp">
姓名：<br/>
<input type="text" name="name"><hr/>
语文成绩：<br/>
<input type="text" name="yuwen"><hr/>
数学成绩：<br/>
<input type="text" name="shuxue"><hr/>
英语成绩：<br/>
<input type="text" name="yingyu"><hr/>
<br/>
<input type="submit" value="提交">
<input type="reset" value="重置">
 %>
</form>
</body>
</html>