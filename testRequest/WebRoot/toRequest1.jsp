<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>��ȡ����ͷ/������� </title>
	<meta name="website" content="http://www.crazyit.org" />
</head>
<body>
<%
//���ý��뷽ʽ�����ڼ������ģ�ʹ��gb2312����
request.setCharacterEncoding("gb2312");
//�������λ�ȡ�����ֵ
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
<!-- ����������������ֵ -->
���֣�<%=name%><hr/>
���ĳɼ���<%=yuwen%><hr/>
��ѧ�ɼ���<%=shuxue%><hr/>
Ӣ��ɼ���<%=yingyu%><hr/>
<!-- �����ѡ���ȡ������ֵ -->
<%
double aver;
double ch=Double.parseDouble(yuwen);
double ma=Double.parseDouble(shuxue);
double en=Double.parseDouble(yingyu);
aver=toaver(ch,ma,en);
out.println("ƽ���ɼ���"+aver);
 %>
</body>
</html>
