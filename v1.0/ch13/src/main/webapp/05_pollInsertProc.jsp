<%@ page contentType="text/html; charset=EUC-KR" %>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="pMgr" class="ex01.PollMgr"/>
<jsp:useBean id="plBean" class="ex01.PollListBean"/>
<jsp:setProperty property="*" name="plBean"/>
<jsp:useBean id="piBean" class="ex01.PollItemBean"/>
<jsp:setProperty property="*" name="piBean"/>
<%
		String sdate = request.getParameter("sdateY")+"-"+
							   request.getParameter("sdateM")+"-"+
								request.getParameter("sdateD");
		String edate = request.getParameter("edateY")+"-"+
								request.getParameter("edateM")+"-"+
								request.getParameter("edateD");
		plBean.setSdate(sdate);
		plBean.setEdate(edate);
		boolean flag = pMgr.insertPoll(plBean,piBean);
		String msg = "설문 추가에 실패 하였습니다.";
		String url = "04_pollInsert.jsp";
		if(flag){
			msg = "설문이 추가 되었습니다.";
			url = "01_pollList.jsp";
		}
%>
<script>
   alert("<%=msg%>");
   location.href="<%=url%>";
</script>