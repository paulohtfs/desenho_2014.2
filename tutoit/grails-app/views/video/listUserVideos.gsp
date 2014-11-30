<html>
<head>
    <g:set var="entityName" value="${message(code: 'video.label', default: 'Video')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <h3 class="page-header">
            Meus Vídeos
        </h3>
        <ul class="list-group">
            <g:each in="${jsLinks}" var="video">
                <li class="list-group-item">
                    <a class="btn btn-info" href="#${video[2]}" role="button" data-toggle="modal">
                        ${video[0]}
                    </a>
                    <span class="badge">
                        <i class="fa fa-fw fa-heart"></i>
                    </span>
                </li>

                <div id="${video[2]}" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                            </div>

                            <div class="modal-body">
                                <iframe width="480" height="320" src="${video[1]}" frameborder="0" allowfullscreen></iframe>
                            </div>

                            <div class="modal-footer">
                            </div>
                        </div>
                    </div>
                </div>
            </g:each>
        </ul>
    </div>
</div>


</body>
</html>