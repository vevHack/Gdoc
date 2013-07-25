<%@ page import="gdoc.User"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'user.label', default: 'User')}" />
<title><g:message code="default.login.label" args="[entityName]" /></title>
</head>
<body>

	<div id="login" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.login.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<g:form action="authenticate">
			<fieldset class="form">
				<div class="fieldcontain required">
					<label for="userId"> <g:message code="user.userId.label"
							default="User Id" /> <span class="required-indicator">*</span>
					</label>
					<g:textField name="userId" required="" value="" />
				</div>
				<div class="fieldcontain required">

					<label for="password"> <g:message
							code="user.password.label" default="Password" /> <span
						class="required-indicator">*</span>
					</label>
					<g:field type="password" name="password" required="" value="" />
				</div>

			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save"
					value="${message(code: 'default.button.login.label', default: 'login')}" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
