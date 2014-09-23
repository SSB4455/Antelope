
<%@ page import="antelope.Organization" %>
<%@ page import="antelope.RegistrationForm" %>
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
			
			<table>
				<thead>
					<tr>
					
						<th><g:message code="姓名" /></th>
					
						<th><g:message code="身份证号" /></th>
					
						<th><g:message code="出生日期" /></th>
					
						<th><g:message code="单位" /></th>
					
						<th><g:message code="部门" /></th>
					
						<th><g:message code="职位" /></th>
					
						<th><g:message code="级别" /></th>
					
						<th><g:message code="专业" /></th>
					
						<th><g:message code="手机" /></th>
					
						<th><g:message code="是否补考" /></th>
					
						<th><g:message code="备注" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${registrationFormInstanceList}" status="i" var="registrationFormInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: registrationFormInstance, field: "applicantName")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "validIdentificationNumber")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "dateOfBirth")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "telephone")}</td>
					
						<td>${fieldValue(bean: registrationFormInstance, field: "mobile")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div >
				<fieldset class="buttons" >
        			<g:jasperReport name="report"
						jasper="registration-information-by-test"
						format="XLSX,RTF,PDF,HTML" ><br/>
						<g:hiddenField name="test.id" value="${test_id}"/>
					</g:jasperReport>
				</fieldset>
            </div>
		</div>
	</body>
</html>
