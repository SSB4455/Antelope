
<%@ page import="antelope.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title>统计信息</title>
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
			<h1>统计信息</h1>
			
			<ol class="property-list organization">
				
				</br>按考试类别导出考生报名信息
				<g:jasperReport name="registrationInformationByProgram"
					jasper="registration-information-by-program"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					考试类别：<g:select name="program.id" from="${programInstanceList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试类别-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>某期某科成绩分数段统计
				<g:jasperReport name="scoreSectionStatistic"
					jasper="score-section-statistic"
					format="DOCX,XLSX,PDF,HTML" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					科目: <g:select name="subject.id" from="${subjectList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 科目-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>按省厅导出考生报名信息
				<g:jasperReport name="registrationInformationByOrganization"
					jasper="registration-information-by-organization"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					省厅：<g:select name="organization.id" from="${organizationList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 省厅-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>按考试期次导出考生信息
				<g:jasperReport name="registrationInformationByTest"
					jasper="registration-information-by-test"
					format="PDF,HTML,XML,CSV,XLS,RTF,TEXT,ODT,ODS,DOCX,XLSX,PPTX" ><br/>
					考试期次: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="ranking" noSelection="['':'-Choose 考试期次-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>某期培训班上与非培训班上通过统计
				<g:jasperReport name="passStatisticByClass"
					jasper="pass-statistic-by-class"
					format="DOCX,XLSX,PDF,HTML" ><br/>
					考试: <g:select name="test.id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					
				</g:jasperReport>
				</br>
				</br>
				</br>
				</br>
				</br>某期正考与补考通过统计
				<g:jasperReport name="passStatisticByResit"
					jasper="pass-statistic-by-resit"
					format="DOCX,XLSX,PDF,HTML" ><br/>
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
