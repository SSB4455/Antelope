<%@ page import="antelope.Organization" %>



<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="organization.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${organizationInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'ranking', 'error')} required">
	<label for="ranking">
		<g:message code="organization.ranking.label" default="Ranking" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ranking" type="number" value="${organizationInstance.ranking}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'department', 'error')} ">
	<label for="department">
		<g:message code="organization.department.label" default="Department" />
		
	</label>
	<g:textField name="department" value="${organizationInstance?.department}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'contact', 'error')} ">
	<label for="contact">
		<g:message code="organization.contact.label" default="Contact" />
		
	</label>
	<g:textField name="contact" value="${organizationInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'telephone', 'error')} ">
	<label for="telephone">
		<g:message code="organization.telephone.label" default="Telephone" />
		
	</label>
	<g:textField name="telephone" value="${organizationInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'mobile', 'error')} ">
	<label for="mobile">
		<g:message code="organization.mobile.label" default="Mobile" />
		
	</label>
	<g:textField name="mobile" value="${organizationInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="organization.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${organizationInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="organization.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${organizationInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'postcode', 'error')} ">
	<label for="postcode">
		<g:message code="organization.postcode.label" default="Postcode" />
		
	</label>
	<g:textField name="postcode" value="${organizationInstance?.postcode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="organization.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${organizationInstance?.remarks}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: organizationInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="organization.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${antelope.OrganizationType.list()}" optionKey="id" required="" value="${organizationInstance?.type?.id}" class="many-to-one"/>
</div>

