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

        <ol class="breadcrumb">
            <li>
                <i class="fa fa-youtube-play"></i>
                <a class="pageHeader" href="${createLink(controller: 'video', action: 'listUserVideos')}">
                    Meus Videos
                </a>
            </li>
        </ol>
    </div>
</div>

<div class="row">
    <g:each in="${jsLinks}" var="video">
        <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <a class="alert-link" href="#${video[2]}" role="button" data-toggle="modal">
                    <img src="${video[3]}">
                </a>
                <div class="caption">
                    <h5>
                        ${video[0]}
                    </h5>
                    <g:link action="show" id="${video[2].minus("showVideo")}" class="btn btn-danger">
                        Página
                    </g:link>

                    <g:link class="btn btn-info" action="edit" id="${video[2].minus("showVideo")}">
                        Editar
                    </g:link>

                </div>
            </div>
        </div>


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
</div>


</body>
</html>