<!-- Delete Form -->
<div class="row">
    <div class="page-header"></div>
    <div class="col-lg-8">
        <h3> Deixe o motivo</h3>
        <textarea class="form-control" rows="3"></textarea>
        <br>
        <g:hiddenField name="id" value="${currentUser?.id}"/>
        <g:actionSubmit class="btn btn-lg btn-danger"
                        action="delete"
                        value="Excluir"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </div>
</div>
<!-- .row -->