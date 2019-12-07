<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/client/js/form2.js"></script>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<div id="divpagecontent">
        <div id="divcontent">
            <form action="${pageContext.request.contextPath}/usermodify" method="post" onsubmit="return checkModForm();">
                <table width="100%" border="0" cellspacing="0">
                    <tr>
                        <td width="25%">
                            <table width="100%" border="0" cellspacing="0"
                                style="margin-top:30px">
                                <tr>
                                    <td class="listtitle">我的帐户</td>
                                </tr>
                                <tr>
                                    <td class="listtd">
                                        <img src="${pageContext.request.contextPath }/client/images/icon1.png" width="15" height="10" />&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <a href="${pageContext.request.contextPath }/client/modifyuserinfo.jsp">用户信息修改</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="listtd">
                                        <img src="${pageContext.request.contextPath }/client/images/icon2.png" width="15" height="15" />&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <a href="${pageContext.request.contextPath}/client/findOrderByUser">订单查询</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="listtd">
                                        <img src="${pageContext.request.contextPath }/client/images/icon3.png" width="15" height="15" />&nbsp;&nbsp;&nbsp;&nbsp; 
                                        <a href="${pageContext.request.contextPath}/client/logout">用戶退出</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table cellspacing="0" class="infocontent">
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellspacing="2">
                                            <tr>
                                                <td style="text-align:right; width:20%">邮箱（不可更改）：</td>
                                                <td style="width:40%; padding-left:20px">${user.email }</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:right">用户名：</td>
                                                <td style="padding-left:20px">${user.username }</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">修改密码：</td>
                                                <td><input type="password" class="textinput"  id="password" name="password" onkeyup="checkPassword();"/></td>
                                                <td><span id="passwordMsg"></span><font color="#999999">密码请设置6-16位字符</font></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">重复密码：</td>
                                                <td><input type="password" class="textinput"  id="repassword" name="repassword" onkeyup="checkConfirm();"/></td>
                                                <td><span id="confirmMsg"></span>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">手机号：</td>
                                                <td><input type="text" class="textinput"  id="tel" name="tel" onkeyup="checkTel();"/></td>
                                                <td><span id="telMsg"></span><font color="#999999">请输入有效的手机号</font></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: right">个人介绍：</td>
                                                <td><textarea id="infotextarea" name="introduce" style="resize:none" onkeyup="checkIntroduce();"></textarea></td>
                                                <td><span id="introduceMsg"></span><font color="#999999">30字以内</font></td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:right">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                        <p style="text-align:center">
                                            <a href="success.html">
                                                <img src="${pageContext.request.contextPath }/client/images/submit.png" border="0" width="40" height="40"/>
                                            </a>
                                        </p>
                                        <p style="text-align:center">&nbsp;</p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>