
<%@ page import="antelope.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title>报名信息导出</title>
	</head>
	<body>
		<a href="#list-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<!--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>-->
				<li><g:link action="registrationReport">报名信息</g:link></li>
				<li><g:link action="markReport">成绩</g:link></li>
				<li><g:link action="statisticsReport">统计</g:link></li>
			</ul>
		</div>
		<div id="list-organization" class="content scaffold-list" role="main">
			<h1>报名信息导出</h1>
			
			<ol class="property-list organization">
				
				</br>按考试导出考生信息
				<g:form action="reportRegistrationInformation" >
					考试: <g:select name="test_id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					<g:submitButton name="report" class="list" value="report" />
				</g:form>
				</br>
				</br>
				</br>
				</br>
				</br>按考试和科目导出考生信息
				<g:form action="reportRegistrationInformation" >
					考试: <g:select name="test_id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					科目: <g:select name="subject_id" from="${subjectList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 科目-']"/>
					<g:submitButton name="report" class="list" value="report" />
				</g:form>
				</br>
				</br>
				</br>
				</br>
				</br>按考试和省厅导出考生报名信息
				<g:form action="reportRegistrationInformation" >
					考试: <g:select name="test_id" from="${testList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 考试-']"/>
					省厅：<g:select name="organization_id" from="${organizationList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 省厅-']"/>
					<g:submitButton name="report" class="list" value="report" />
				</g:form>
				</br>
				</br>
				</br>
				</br>
				</br>按省厅导出考生报名信息
				<g:form action="reportRegistrationInformation" >
					考试类别：<g:select name="program_id" from="${programList}" optionKey="id" optionValue="name" />
					省厅：<g:select name="organization_id" from="${organizationList}" optionKey="id" optionValue="name" noSelection="['':'-Choose 省厅-']"/>
					<g:submitButton name="report" class="list" value="report" />
				</g:form>
				</br>
				</br>
				</br>
				</br>
				
			</ol>
			
		</div>
	</body>
</html>
