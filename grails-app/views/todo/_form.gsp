<%@ page import="app0.Todo" %>



<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'personId', 'error')} ">
	<label for="personId">
		<g:message code="todo.personId.label" default="Person Id" />
		
	</label>
	<g:textField name="personId" maxlength="13" pattern="${todoInstance.constraints.personId.matches}" value="${todoInstance?.personId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="todo.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${todoInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="todo.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dueDate" precision="day"  value="${todoInstance?.dueDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'priority', 'error')} required">
	<label for="priority">
		<g:message code="todo.priority.label" default="Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="priority" type="number" value="${todoInstance.priority}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="todo.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${todoInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: todoInstance, field: 'taskList', 'error')} required">
	<label for="taskList">
		<g:message code="todo.taskList.label" default="Task List" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="taskList" name="taskList.id" from="${app0.TaskList.list()}" optionKey="id" required="" value="${todoInstance?.taskList?.id}" class="many-to-one"/>
</div>

