<?php

if ($peticion_ajax) {
    require_once "../models/mainModel.php";
} else {
    require_once "./models/mainModel.php";
}

class userControlador extends mainModel {

    /*----------  Controlador iniciar sesion cliente - Controller login client ----------*/
    public function iniciar_sesion_cliente_controlador() {
        $email = mainModel::limpiar_cadena($_POST['login_email']);
        $clave = mainModel::limpiar_cadena($_POST['login_clave']);

        /*-- Comprobando campos vacíos - Checking empty fields --*/
        if ($email == "" || $clave == "") {
            echo '<script>
                Swal.fire({
                  title: "Ocurrió un error inesperado",
                  text: "No has llenado todos los campos que son requeridos.",
                  icon: "error",
                  confirmButtonText: "Aceptar"
                });
            </script>';
            exit();
        }

        /*-- Verificando integridad de los datos - Verifying data integrity --*/
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo '<script>
                Swal.fire({
                  title: "Ocurrió un error inesperado",
                  text: "El formato del correo electrónico no es válido.",
                  icon: "error",
                  confirmButtonText: "Aceptar"
                });
            </script>';
            exit();
        }
        if (mainModel::verificar_datos("[a-zA-Z0-9$@.-]{7,100}", $clave)) {
            echo '<script>
                Swal.fire({
                  title: "Ocurrió un error inesperado",
                  text: "La contraseña no coincide con el formato solicitado.",
                  icon: "error",
                  confirmButtonText: "Aceptar"
                });
            </script>';
            exit();
        }

        $clave = mainModel::encryption($clave);

        /*-- Verificando datos de la cuenta - Verifying account details --*/
        $datos_cuenta = mainModel::datos_tabla(
            "Normal",
            "cliente WHERE cliente_email='$email' AND cliente_clave='$clave' AND cliente_cuenta_estado='Activo'",
            "*",
            0
        );

        if ($datos_cuenta->rowCount() == 1) {
            $row = $datos_cuenta->fetch();

            $datos_cuenta->closeCursor();
            $datos_cuenta = mainModel::desconectar($datos_cuenta);

            $_SESSION['id_cliente'] = $row['cliente_id'];
            $_SESSION['nombre_cliente'] = $row['cliente_nombre'];
            $_SESSION['apellido_cliente'] = $row['cliente_apellido'];
            $_SESSION['email_cliente'] = $row['cliente_email'];
            $_SESSION['token_cliente'] = mainModel::encryption(uniqid(mt_rand(), true));

            if (headers_sent()) {
                echo "<script> window.location.href='" . SERVERURL . "index/'; </script>";
            } else {
                return header("Location: " . SERVERURL . "index/");
            }
        } else {
            echo '<script>
                Swal.fire({
                  title: "Datos incorrectos",
                  text: "El correo electrónico o contraseña no son correctos.",
                  icon: "error",
                  confirmButtonText: "Aceptar"
                });
            </script>';
        }
    }

    /*----------  Controlador cerrar sesion cliente - Controller logout client ----------*/
    public function cerrar_sesion_cliente_controlador() {
        $token = mainModel::decryption($_POST['token']);
        $email = mainModel::decryption($_POST['email']);

        if ($token == $_SESSION['token_cliente'] && $email == $_SESSION['email_cliente']) {
            unset($_SESSION['id_cliente']);
            unset($_SESSION['nombre_cliente']);
            unset($_SESSION['apellido_cliente']);
            unset($_SESSION['email_cliente']);
            unset($_SESSION['token_cliente']);
            $alerta = [
                "Alerta" => "redireccionar",
                "URL" => SERVERURL . "index/"
            ];
        } else {
            $alerta = [
                "Alerta" => "simple",
                "Titulo" => "Ocurrió un error inesperado",
                "Texto" => "No se pudo cerrar la sesión",
                "Icon" => "error",
                "TxtBtn" => "Aceptar"
            ];
        }
        echo json_encode($alerta);
    }
}
?>
