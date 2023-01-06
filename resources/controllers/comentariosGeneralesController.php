<?php 
 function post_comentario2(){   
    if(isset($_POST['enviar2'])){
        $com_nombres = limpiar_string(trim($_POST['com_nombre']));
        $com_apellidos = limpiar_string(trim($_POST['com_apellido']));
        $com_email = limpiar_string(trim($_POST['com_correo']));
        $com_mensaje = limpiar_string(trim($_POST['com_mensaje']));
        $com_telefono = limpiar_string(trim($_POST['com_telefono']));
        $query = query("INSERT INTO comentariosgenerales (com_name, com_apellido,com_correo, com_telefono, com_mensaje, com_fecha) VALUES ('$com_nombres', '$com_apellidos', '$com_email',$com_telefono,'$com_mensaje',NOW())");
        confirm($query);
        redirect("./");
    }
    
}

function get_comentariosGenerales(){
    $query = query("SELECT * FROM comentariosgenerales");
    confirm($query);
    while($fila = fetch_array($query)){
        $usuario = $fila['com_name'] . " " . $fila['com_apellido'];
        $fecha = explode(' ', $fila['com_fecha'])[0];
        $hora = explode(' ', $fila['com_fecha'])[1];
        $comentario = <<<DELIMITADOR
                <tr>
                    <td>{$usuario}</td>
                    <td>{$fila['com_correo']}</td>
                    <td>{$fila['com_telefono']}</td>
                    <td>
                        {$fila['com_mensaje']}
                    </td>
                    <td>{$fecha}</td>
                    <td>{$hora}</td>
                </tr>

                
</div>
DELIMITADOR;
        echo $comentario;
    }
}
  
?>
