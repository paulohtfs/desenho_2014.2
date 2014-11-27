<%@ page import="tutoit.Category" %>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryName', 'error')} required form-group">
	<label for="categoryName" class="col-sm-3 control-label">
		<g:message code="category.categoryName.label" default="Nome da Categoria" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-5">
	    <g:textField  class="form-control" name="categoryName" required="" value="${categoryInstance?.categoryName}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'videos', 'error')} form-group">
	<label for="videos" class="col-sm-3 control-label">
		<g:message code="category.videos.label" default="Videos" />
	</label>
	
    <ul class="one-to-many">
        <g:each in="${categoryInstance?.videos?}" var="v">
            <li>
                <g:link  controller="video" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link>
            </li>
        </g:each>

        <li class="add">
            <g:link controller="video" action="create" params="['category.id': categoryInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'video.label', default: 'Video')])}</g:link>
        </li>
    </ul>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'subCategories', 'error')} form-group">
	<label for="subCategories" class="col-sm-3 control-label">
		<g:message code="category.subCategories.label" default="SubCategories" />
	</label>
    <div class="col-sm-3">
	    <g:select style="" name="subCategories" from="${tutoit.Category.list()}" multiple="multiple" optionKey="id" size="5" value="${categoryInstance?.subCategories*.id}" class="many-to-many"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'categoryDescription', 'error')} form-group">
	<label for="categoryDescription" class="col-sm-3 control-label">
		<g:message code="category.categoryDescription.label" default="Descrição das Categorias" />
	</label>

    <div class="col-sm-5">
        <g:textField class="form-control" name="categoryDescription" value="${categoryInstance?.categoryDescription}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'eSubcategoria', 'error')} form-group">
	<label for="eSubcategoria" class="col-sm-3 control-label">
		<g:message code="category.eSubcategoria.label" default=" subcategoria" />
	</label>
	<g:checkBox name="eSubcategoria" value="${categoryInstance?.eSubcategoria}" />
</div>

