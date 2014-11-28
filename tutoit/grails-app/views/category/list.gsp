
<%@ page import="tutoit.Category" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-category" class="content scaffold-list" role="main">
			<h1><g:message code="Lista de Categorias" /></h1>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>

			<table class="table">
				<thead>
					<tr>
					
						<g:sortableColumn property="categoryName" title="${message(code: 'category.categoryName.label', default: 'Nome da Categoria')}" />
					
						<g:sortableColumn property="categoryDescription" title="${message(code: 'category.categoryDescription.label', default: 'Descrição da Categoria')}" />
					
						<g:sortableColumn property="eSubcategoria" title="${message(code: 'category.eSubcategoria.label', default: 'Subcategoria')}" />
					
					</tr>
				</thead>

				<tbody>
                    <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                            <td><g:link action="show" id="${categoryInstance.id}">${fieldValue(bean: categoryInstance, field: "categoryName")}</g:link></td>

                            <td>${fieldValue(bean: categoryInstance, field: "categoryDescription")}</td>

                            <td><g:formatBoolean boolean="${categoryInstance.eSubcategoria}" /></td>

                        </tr>
                    </g:each>
				</tbody>

			</table>
			<div class="pagination">
				<g:paginate total="${categoryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
