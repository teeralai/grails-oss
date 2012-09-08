
<%@ page import="app0.Todo" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'todo.label', default: 'Todo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-todo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-todo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="personId" title="${message(code: 'todo.personId.label', default: 'Person Id')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'todo.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="dueDate" title="${message(code: 'todo.dueDate.label', default: 'Due Date')}" />
					
						<g:sortableColumn property="priority" title="${message(code: 'todo.priority.label', default: 'Priority')}" />
					
						<g:sortableColumn property="subject" title="${message(code: 'todo.subject.label', default: 'Subject')}" />
					
						<th><g:message code="todo.taskList.label" default="Task List" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${todoInstanceList}" status="i" var="todoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${todoInstance.id}">${fieldValue(bean: todoInstance, field: "personId")}</g:link></td>
					
						<td>${fieldValue(bean: todoInstance, field: "description")}</td>
					
						<td><g:formatDate date="${todoInstance.dueDate}" /></td>
					
						<td>${fieldValue(bean: todoInstance, field: "priority")}</td>
					
						<td>${fieldValue(bean: todoInstance, field: "subject")}</td>
					
						<td>${fieldValue(bean: todoInstance, field: "taskList")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${todoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
