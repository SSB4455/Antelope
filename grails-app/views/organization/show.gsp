
<%@ page import="antelope.Organization" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'organization.label', default: 'Organization')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-organization" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-organization" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list organization">
			
				<g:if test="${organizationInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="organization.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${organizationInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.ranking}">
				<li class="fieldcontain">
					<span id="ranking-label" class="property-label"><g:message code="organization.ranking.label" default="Ranking" /></span>
					
						<span class="property-value" aria-labelledby="ranking-label"><g:fieldValue bean="${organizationInstance}" field="ranking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="organization.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:fieldValue bean="${organizationInstance}" field="department"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.contact}">
				<li class="fieldcontain">
					<span id="contact-label" class="property-label"><g:message code="organization.contact.label" default="Contact" /></span>
					
						<span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${organizationInstance}" field="contact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.telephone}">
				<li class="fieldcontain">
					<span id="telephone-label" class="property-label"><g:message code="organization.telephone.label" default="Telephone" /></span>
					
						<span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${organizationInstance}" field="telephone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.mobile}">
				<li class="fieldcontain">
					<span id="mobile-label" class="property-label"><g:message code="organization.mobile.label" default="Mobile" /></span>
					
						<span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${organizationInstance}" field="mobile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="organization.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${organizationInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="organization.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${organizationInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.postcode}">
				<li class="fieldcontain">
					<span id="postcode-label" class="property-label"><g:message code="organization.postcode.label" default="Postcode" /></span>
					
						<span class="property-value" aria-labelledby="postcode-label"><g:fieldValue bean="${organizationInstance}" field="postcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="organization.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${organizationInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${organizationInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="organization.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="organizationType" action="show" id="${organizationInstance?.type?.id}">${organizationInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${organizationInstance?.id}" />
					<g:link class="edit" action="edit" id="${organizationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
