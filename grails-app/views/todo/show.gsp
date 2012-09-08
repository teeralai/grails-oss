
<%@ page import="app0.Todo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'todo.label', default: 'Todo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-todo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-todo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list todo">
			
				<g:if test="${todoInstance?.personId}">
				<li class="fieldcontain">
					<span id="personId-label" class="property-label"><g:message code="todo.personId.label" default="Person Id" /></span>
					
						<span class="property-value" aria-labelledby="personId-label"><g:fieldValue bean="${todoInstance}" field="personId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="todo.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${todoInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="todo.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:formatDate date="${todoInstance?.dueDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoInstance?.priority}">
				<li class="fieldcontain">
					<span id="priority-label" class="property-label"><g:message code="todo.priority.label" default="Priority" /></span>
					
						<span class="property-value" aria-labelledby="priority-label"><g:fieldValue bean="${todoInstance}" field="priority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="todo.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${todoInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${todoInstance?.taskList}">
				<li class="fieldcontain">
					<span id="taskList-label" class="property-label"><g:message code="todo.taskList.label" default="Task List" /></span>
					
						<span class="property-value" aria-labelledby="taskList-label"><g:link controller="taskList" action="show" id="${todoInstance?.taskList?.id}">${todoInstance?.taskList?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${todoInstance?.id}" />
					<g:link class="edit" action="edit" id="${todoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
