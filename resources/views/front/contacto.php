<section class="contacto pt-10 pb-10">
    <div class="contacto__contenedor contenedor">
        <h2 class="titulo-n2 text-center text-white">contacto</h2>
        <p class="resumen-n2 text-center mt-2 mb-7">Lorem ipsum dolor sit amet consectetur.</p>
        <form class="contacto__contenedor__form" method="post">
            <div class="contacto__contenedor__form__col">
                <div class="contacto__contenedor__form__col--formGroup">
                    <input type="text" name="com_nombre" placeholder="Tu Nombre*">
                </div>
                <div class="contacto__contenedor__form__col--formGroup">
                    <input type="email" name="com_correo" placeholder="Tu Correo*">
                </div>
                <div class="contacto__contenedor__form__col--formGroup">
                    <input type="text" name="com_telefono" placeholder="Tu Telefono*">
                </div>
            </div>
            <div class="contacto__contenedor__form__col">
                <div class="contacto__contenedor__form__col--formGroup height-100">
                    <textarea cols="30" rows="5" name="com_mensaje" placeholder="Tu Mensaje*" class="height-100"></textarea>
                </div>
            </div>
            <div class="contacto__contenedor__form--btnBox text-center mt-5">
                <!-- <input type="submit" value="enviar mensaje" class="btn btn-amarillo"> -->
                <button class="btn btn-amarillo" name="enviar2">enviar mensaje</button>
            </div>
        </form>
        <?php post_comentario2(); ?>
    </div>
</section>