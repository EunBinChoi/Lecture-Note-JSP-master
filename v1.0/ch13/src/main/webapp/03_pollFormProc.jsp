<%@ page contentType="text/html; charset=EUC-KR" %>
<jsp:useBean id="pMgr" class="ex01.PollMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	int num = Integer.parseInt(request.getParameter("num"));
	String[] itemnum = request.getParameterValues("itemnum");
	boolean flag = pMgr.updatePoll(num, itemnum);
	
	String msg = "��ǥ�� ��ϵ��� �ʽ��ϴ�.";
	if (flag) {
		msg = "��ǥ�� ���������� ��ϵǾ����ϴ�.";
	}
%>
<script>
   alert("<%=msg%>");
   location.href="01_pollList.jsp?num=<%=num%>";
</script>