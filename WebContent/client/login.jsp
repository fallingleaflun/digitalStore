<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/client/css/main.css" type="text/css" />
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="menu_search.jsp" />
	<div id="divcontent">
		<form action="${pageContext.request.contextPath}/client/LoginServlet" method="post">
			<table width="900px" border="0" cellspacing="0">
				<tr>
					<td style="padding:30px"><div style="height:470px">
							<div>
								<table width="85%" border="0" cellspacing="0" align="center">
									<tr>
                                        <td style="text-align:left; padding-top:20px; width:60%">
                                            <img src="${pageContext.request.contextPath }/client/images/loginLeft.jpg" width="300" height="360" style="border-radius: 5px;"/>
										</td>
										<td>
											<div id="logindiv">
												<table width="100%" border="0" cellspacing="0">
													<tr>
														<td style="text-align:center; padding-top:20px">
															<img src="${pageContext.request.contextPath }/client/images/logintitle.png" width="150" height="60" />
														</td>
													</tr>
													<!--意义不明·
                                                    <tr>
														<td style="text-align:center;padding-top:20px;"><font
															color="#ff0000">${requestScope["register_message"]}</font>
														</td>
													</tr>-->
													<tr>
														<td style="text-align:center">
															<table width="80%" border="0" cellspacing="0"
																style="margin-top:15px ;margin-left:auto; margin-right:auto">
																<tr>
																	<td
																		style="text-align:right; padding-top:5px; width:25%">用户名：</td>
																	<td style="text-align:left"><input name="username"
																		type="text" class="textinput" />
																	</td>
																</tr>
																<tr>
																	<td style="text-align:right; padding-top:5px">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
																	<td style="text-align:left"><input name="password"
																		type="password" class="textinput" />
																	</td>
																</tr>
                                                                <!--
																<tr>
																	<td colspan="2" style="text-align:center">
																		<input type="checkbox" name="checkbox" value="checkbox01" />记住用户名
																		&nbsp;&nbsp; 
																		<input type="checkbox" name="checkbox" value="checkbox02" /> 自动登录
																	</td>
																</tr
                                                                -->
                                                                <tr>
                                                                    <br \>
                                                                    <br \>
                                                                </tr>
																<tr>
																	<td colspan="2"
																		style="padding-top:10px; text-align:center">
																		<input name="image" type="image" onclick="return formcheck()"
																		src="${pageContext.request.contextPath }/client/images/loginbutton.png" />
																	</td>
																</tr>
																<!-- <tr>
																	<td colspan="2"
																		style="padding-top:10px; text-align:center"><a
																		href="register.jsp"><img name="image"
																			src="images/signupbutton.gif" width="135" height="33" />
																	</a></td>
																</tr> -->
															</table>
														</td>
													</tr>
												</table>
											</div>
                                            </td>
									</tr>
								</table>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<jsp:include page="foot.jsp" />
</body>
</html>
