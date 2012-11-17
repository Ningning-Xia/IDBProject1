<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" 
    import = "java.util.ArrayList" import="java.util.Iterator" 
 import="com.ibm.taste.example.movie.model.User"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电影推荐系统-评价电影</title>
<link href="newStyle/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.STYLE1 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-family: "微软雅黑";
}
.STYLE3 {
	color: #FFFFFF;
	font-size: 24px;
	font-weight: bold;
	font-family: "微软雅黑";
}

.STYLE4 {
	color: #D13939;
	font-size: 16px;
	font-weight: bold;
	font-family: "微软雅黑";
}
.STYLE5 {
	color: #FFFFFF;
	font-size: 14px;
	font-weight: bold;
	font-family: "微软雅黑";
}
-->
</style>

<SCRIPT LANGUAGE="JavaScript">
function access()
{
	var id = document.InsertForm.movieID.value;
	var name = document.InsertForm.movieName.value;
	var year = document.InsertForm.publishYear.value;
	var type = document.InsertForm.movieType.value;
	
	if(id==""){
		alert("电影编号不得为空");
		return false;
	}
	if(name==""){
		alert("电影名称不得为空");
		return false;
	}
	if(year==""){
		alert("发行年不得为空");
		return false;
	}
	if(type==""){
		alert("电影类型不得为空");
		return false;
	}
	
	alert("添加成功");
	return true;
}
</SCRIPT>

</head>

<body style="background:url(images/bg.gif) repeat-x top; background-color:#11151D" >

<table cellpadding="0" cellspacing="0" border="0"  align="center" >
	<tr>	
	  <td valign="top" width="766" height="705" >
	  	<table cellpadding="0" cellspacing="0" border="0">
			<tr>
				<td valign="top" width="766" height="340" style="background-image:url(images/top.jpg) ">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td valign="top" width="535" height="340">
								<div style=" margin-left:55px; margin-top:18px "><a href="First.jsp"><img src="images/logo_MRS.jpg" alt="" border="0"></a> <span class="STYLE4">Movie Recommender</span></div>
								<div  style=" margin-left:312px; margin-top:139px; margin-right:45px; line-height:13px " class="w">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </div>
								<div  style=" margin-left:432px; margin-top:27px; margin-right:5px; line-height:13px " class="w"><strong>William Blake</strong></div>							</td>
							<td valign="top" width="231" height="340">
							
							<div style=" margin-left:160px; margin-top:35px "><a href="Login.jsp" class="STYLE5">[注销]</a></div>
                           
								<div style=" margin-left:28px; margin-top:51px "><a href="First.jsp" ><img src="images/m1_first.jpg" alt="" border="0"></a></div>							
								
<%  if (session.getAttribute("user") != null) {
 		User user = (User) session.getAttribute("user");
 		String userEmail = user.getEmail();
 		if (userEmail.equalsIgnoreCase("admin")) { %>
 		<div style=" margin-left:28px; margin-top:1px "><a href="RateNewMovie"><img src="images/m1_rateM.jpg" alt="" border="0"></a></div>
 		<div style=" margin-left:28px; margin-top:1px "><a href="DeleteRating"><img src="images/m1_delR.jpg" alt="" border="0"></a></div>
 		<div style=" margin-left:28px; margin-top:1px "><a href="AddNewMovie"><img src="images/m1_addM.jpg" alt="" border="0"></a></div>
 		<div style=" margin-left:28px; margin-top:1px "><a href="DeleteMovie"><img src="images/m1_delM.jpg" alt="" border="0"></a></div>
 		<%
 		}
 		else{%>
 		<div style=" margin-left:28px; margin-top:1px "><a href="RatedMovie"><img src="images/m1_rating.jpg" alt="" border="0"></a></div>
		<div style=" margin-left:28px; margin-top:1px "><a href="RecommendedMovie"><img src="images/m1_recM.jpg" alt="" border="0"></a></div>
		<div style=" margin-left:28px; margin-top:1px "><a href="RateNewMovie"><img src="images/m1_rateM.jpg" alt="" border="0"></a></div>
		<div style="margin-left: 28px; margin-top:1px"><a href="ContactUs.jsp"><img src="images/m1_contact.jpg" alt="" border="0"></a></div>
		<%} 
 		}%>
								
							
						</td>
						</tr>
					</table>
				</td>
			</tr>

<tr>
				<td valign="top" width="766" height="292">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td valign="top" width="9" height="292"></td>
							<td valign="top" width="747" height="292" style="background-image:url(images/bg2.gif) ">
								<table cellpadding="0" cellspacing="0" border="0">
									<tr>
										<td valign="top" width="747" height="292" style="background:url(images/bg1.jpg) no-repeat top ">
											<table cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td valign="top" width="270" height="292">
														<div style=" margin-left:39px; margin-top:2px "><img src="images/4_w1.gif" alt="" border="0"></div>
														
<div style=" margin-left:44px; margin-top:22px "><img alt="" align="left" style="margin-right:19px "src="images/4_p1.jpg">										
																<div class="w"  style=" margin-left:19px; margin-top:27px; margin-right:20px; line-height:14px "><a href="#" class="red"><strong>Auctor wisi.</strong></a>
Duis ac  turpis. 	
Donec sit ame.</div>
</div>

	<div style=" margin-left:44px; margin-top:25px "><img alt="" align="left" style="margin-right:21px "src="images/3_p1.jpg">										
																<div class="w"  style=" margin-left:19px; margin-top:31px; margin-right:20px; line-height:14px "><strong><a href="#" class="red">Eleilit enean.</a></strong>
Uctor wisi t urn
amrat volutpat.</div>
</div>

<div style=" margin-left:44px; margin-top:25px "><img alt="" align="left" style="margin-right:21px "src="images/3_p2.jpg">										
																<div class="w"  style=" margin-left:19px; margin-top:31px; margin-right:20px; line-height:14px "><strong><a href="#" class="red">Duiac turpis. 	</a></strong>
Doe ab illo inve
tore verit atist.</div>
</div>

													</td>
													<form name="InsertForm" action="insert.do" onsubmit="return access()">
													<td valign="top" width="477" height="292">
														<div style=" margin-left:5px; margin-top:2px "><img src="images/4_w2.gif" alt="" border="0"></div>
														
														  <div class="w"  style=" margin-left:80px; margin-top:40px; margin-right:35px; line-height:14px ">
														   <div style="margin-left:89px"><span class="STYLE4"><strong>添加新电影</strong></span></div>
														    <br>
                                                            <div  style="margin-left:4px; margin-top:0px;" >电影编号  <input type="text"  name="movieID" class="w" style=" width:182px; height:22px; border-style:solid; border-width:1px; border-color:#8A8C8F; background-color:#333B46 "  ></div> <br>
                                                                <div  style="margin-left:4px; margin-top:0px;" >电影名称  <input type="text" name="movieName" class="w" style=" width:182px; height:22px; border-style:solid; border-width:1px; border-color:#8A8C8F; background-color:#333B46 "  ></div> <br>
                                                                    <div  style="margin-left:4px; margin-top:0px;" >发行日期  <input type="text"  name="publishYear" class="w" style=" width:182px; height:22px; border-style:solid; border-width:1px; border-color:#8A8C8F; background-color:#333B46 "  ></div> <br>
                                        <div  style="margin-left:4px; margin-top:0px;" >电影类型  <input type="text" name="movieType"   class="w" style=" width:182px; height:22px; border-style:solid; border-width:1px; border-color:#8A8C8F; background-color:#333B46 "  ></div> <br>
                                        
                                        <div  style="margin-left:64px; margin-top:0px;" >
                                        <input type="submit" value="添加"  onclick="access()">
                                        &nbsp;  &nbsp;
                                          <input type="reset" value="重置" ></div>
                                          
													          </p>
														
								
								<%if(request.getAttribute("str")!=null) {
									String str = (String)request.getAttribute("str");%>
								<div  class="STYLE4" style="margin-left:64px; margin-top:0px;"><%=str %></div>
								<%} %>			
								<br></br>			  
                                                          </div>  </div>

													</td>
													</form>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td valign="top" width="10" height="292"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="top" width="766" height="73" style="background-image:url(images/bottom.gif); background-repeat:no-repeat ">
<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td valign="top" width="315" height="73">
								<div style="margin-left:36px; margin-top:23px; " class="w"><img alt="" style="margin-right:11px; vertical-align:middle " src="images/z1.gif" border="0">Movie Producer &copy; 2012 / <a href="#" class="w">Privacy Policy</a></div>
							</td>
							<td valign="top" width="451" height="73">
								<div style="margin-left:0px; margin-top:25px; text-transform:uppercase " class="w"><img alt="" style="margin-right:2px; vertical-align:middle " src="images/z2.gif" border="0"><a href="#" class="w"> I Am</a><img alt="" style="margin-right:2px; margin-left:30px; vertical-align:middle " src="images/z2.gif" border="0"><a href="#" class="w"> FILMOGRAPHY</a><img alt="" style="margin-right:2px; margin-left:30px; vertical-align:middle " src="images/z2.gif" border="0"><a href="#" class="w"> BACKSTAGE</a><img alt="" style="margin-right:2px; margin-left:30px; vertical-align:middle "  src="images/z2.gif" border="0"><a href="#" class="w"> OTHER</a><img alt="" style="margin-right:2px; margin-left:30px; vertical-align:middle " src="images/z2.gif" border="0"><a href="#" class="w"> CONTACT ME</a></div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	  </td>
	</tr>
</table>
</body>
</html>

