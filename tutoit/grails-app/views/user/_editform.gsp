<div class="panel-body">
    <!-- Main user data -->
    <div class="col-sm-6">
        <ul class="list-group">

            <li class="list-group-item">
                <b>Usuário </b>
                <div class="form-group">
                    <g:textField class="form-control"
                                 placeholder="${currentUser?.username}"
                                 name="username"
                                 value="${currentUser?.username}"/>
                </div>
            </li>

            <li class="list-group-item">
                <b>Sobrenome </b>
                <div class="form-group">
                    <g:if test="${!currentUser.userLastName}">
                        <g:textField class="form-control"
                                     placeholder="Sobrenome"
                                     name="userLastName"
                                     value="${currentUser?.userLastName}"/>
                    </g:if>

                    <g:else>
                        <g:textField class="form-control"
                                     placeholder="${currentUser?.userLastName}"
                                     name="userLastName"
                                     value="${currentUser?.userLastName}"/>
                    </g:else>
                </div>
            </li>

            <li class="list-group-item">
                <b>Email </b>
                <div class="form-group">

                    <g:if test="${!currentUser.userEmail}">
                        <g:textField class="form-control"
                                     placeholder="Sobrenome"
                                     name="userEmail"
                                     value="${currentUser?.userEmail}"/>
                    </g:if>

                    <g:else>
                        <g:textField class="form-control"
                                     placeholder="${currentUser?.userEmail}"
                                     name="userEmail"
                                     value="${currentUser?.userEmail}"/>
                    </g:else>

                </div>
            </li>

            <li class="list-group-item">
                <b>Idade </b>
                <div class="form-group">

                    <g:if test="${!currentUser.userAge}">
                        <g:textField class="form-control"
                                     placeholder="Sobrenome"
                                     name="userAge"
                                     value="${currentUser?.userAge}"/>
                    </g:if>

                    <g:else>
                        <g:textField class="form-control"
                                     placeholder="${currentUser?.userAge}"
                                     name="userAge"
                                     value="${currentUser?.userAge}"/>
                    </g:else>
                </div>
            </li>
        </ul>
    </div>
    <!-- /.col-sm-6 -->

    <!-- Location data -->
    <div class="col-sm-6">
        <ul class="list-group">
            <div class="form-group">
                <li class="list-group-item">
                    <b>País </b>
                    <select class="form-control">
                        <option>Brasil</option>
                    </select>
                </li>
            </div>

            <div class="form-group">
                <li class="list-group-item">
                    <b>Estado </b>
                    <select class="form-control">
                        <option>Brasília</option>
                    </select>
                </li>
            </div>
        </ul>
    </div>
    <!-- /.col-sm-6 -->
</div>