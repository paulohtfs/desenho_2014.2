<%@ page import="tutoit.video.ShowingVideo; tutoit.Video" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
    <body>

    <span class="property-value" aria-labelledby="authors-label">
        <g:link controller="video" action="show" id="${video.id}" >${video?.encodeAsHTML()}</g:link>
    </span>

    <g:each in="${showVideo}">
        <div id="showVideo" class="modal fade" >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                    </div>
    
                    <div class="modal-body">
                        <iframe width="420" height="315" src="${}" frameborder="0" allowfullscreen></iframe>
                    </div>
    
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>
    </g:each>

	</body>
</html>
