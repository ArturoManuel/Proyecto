<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">COMENTARIOS</h1>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card shadow">
            <div class="card-header py-3">
                <h6 class="text-primary mb-0">Comentarios recibidos</h6>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Nombres y apellidos</th>
                            <th>Correo</th>
                            <th>telefono</th>
                            <th>Mensaje</th>
                            <th>Fecha</th>
                            <th>Hora</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php get_comentariosGenerales(); ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>