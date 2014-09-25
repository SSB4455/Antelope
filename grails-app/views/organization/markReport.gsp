
<%@ page import="antelope.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title>成绩信息导出</title>
	</head>
	<body>
		<a href="#list-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link action="registrationReport">报名信息</g:link></li>
				<li><g:link action="markReport">成绩</g:link></li>
				<li><g:link action="statisticsReport">统计</g:link></li>
			</ul>
		</div>
		<div id="list-organization" class="content scaffold-list" role="main">
			<h1>成绩信息导出</h1>
			
			<ol class="property-list organization">
				
				</br>按考试导出成绩信息
				<g:jasperReport name="scoreInformationByTest"
					jasper="score-information-by-test"
					format="DOCX,XLSX,PDF,HTML" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>按考试和科目导出成绩信息
				<g:jasperReport name="scoreInformationByTestAndSubject"
					jasper="score-information-by-test-subject"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					科目: <g:select name="subject.id" from="${subjectList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 科目-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>按考试和省厅导出成绩信息
				<g:jasperReport name="scoreInformationByTestAndOrganization"
					jasper="score-information-by-test-organization"
					format="DOCX,XLSX,PDF,HTML" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					省厅：<g:select name="organization.id" from="${organizationList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 省厅-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>导出某期考生成绩发送单
				<g:jasperReport name="scoreInformationForSendByTest"
					jasper="score-information-for-send-by-test"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					考试期次: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>导出某考生成绩发送单
				<g:jasperReport name="scoreInformationForSendByPersion"
					jasper="score-information-for-send-by-persion"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					身份证号：<g:textField name="vid" />
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>导出某期类证书格式成绩
				<g:jasperReport name="aboutCertificate"
					jasper="about-certificate"
					format="DOCX,XLSX,PPTX,PDF,HTML" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				
			</ol>
			
		</div>
	</body>
</html>
