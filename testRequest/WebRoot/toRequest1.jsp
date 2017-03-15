<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>获取请求头/请求参数 </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<%
//设置解码方式，对于简体中文，使用gb2312解码
request.setCharacterEncoding("gb2312");
//下面依次获取表单域的值
String name = request.getParameter("name");
Cookie c = new Cookie("username",name);
c.setMaxAge(60*60*24); 
response.addCookie(c);
String yuwen = request.getParameter("yuwen");
String shuxue = request.getParameter("shuxue");
String yingyu = request.getParameter("yingyu");
%>
<%!
double toaver(double a,double b,double c)
{
return (a+b+c)/3;
}
 %>
<!-- 下面依次输出表单域的值 -->
名字：<%=name%><hr/>
语文成绩：<%=yuwen%><hr/>
数学成绩：<%=shuxue%><hr/>
英语成绩：<%=yingyu%><hr/>
<!-- 输出复选框获取的数组值 -->
<%
double aver;
double ch=Double.parseDouble(yuwen);
double ma=Double.parseDouble(shuxue);
double en=Double.parseDouble(yingyu);
aver=toaver(ch,ma,en);
out.println("平均成绩："+aver);
 %>
</body>
</html>
