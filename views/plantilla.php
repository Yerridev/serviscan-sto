
<?php
    /*---------- Iniciando sesion ----------*/
    include "./views/inc/session_start.php";
?>

<!DOCTYPE html>
<html lang="<?php echo LANG; ?>">
<head>
    <?php include "./views/inc/head.php"; ?>	
</head>
<body id="main-body" class="scroll">
    <?php
        $peticion_ajax=false;

        if(isset($_GET['views'])){
            $pagina=explode("/", $_GET['views']);
        }else{
            $pagina=[];
        }

        /*---------- Instancia controlador vistas ----------*/
        require_once "./controllers/vistasControlador.php";
        $ins_vistas = new vistasControlador();

        /*---------- Instancia controlador login ----------*/
        require_once "./controllers/loginControlador.php";
        $ins_login = new loginControlador();
        

        if(isset($pagina[0]) && DASHBOARD==$pagina[0]){

            /*---------- Dashboard ----------*/
            $vistas=$ins_vistas->obtener_vistas_controlador("dashboard",LANG);

            if($vistas=="login" || $vistas=="404"){
                require_once "./views/contenidos/".LANG."/web-".$vistas.".php";
            }else{

                /*-- Comprobando acceso del usuario - Checking user access --*/
                if(!isset($_SESSION['token_sto']) || !isset($_SESSION['id_sto']) || !isset($_SESSION['nombre_sto']) || !isset($_SESSION['apellido_sto']) || !isset($_SESSION['usuario_sto']) || !isset($_SESSION['cargo_sto'])){
                    $ins_login->forzar_cierre_sesion_controlador();
                }
    ?>
                <!-- Main container -->
                <main class="full-box main-container">
                    <!-- Nav lateral -->
                    <?php include "./views/inc/".LANG."/nav_lateral.php"; ?>

                    <!-- Page content -->
                    <section class="full-box page-content scroll">

                        <!-- Nav bar -->
                        <?php include "./views/inc/".LANG."/nav_bar.php"; ?>

                        <?php 
                            /*---------- Vista ----------*/
                            require_once $vistas;
                        ?>

                    </section>
                </main> 
    <?php
                include "./views/inc/log_out_admin.php";
            }
        }else{

            /*---------- Web ----------*/
            $vistas=$ins_vistas->obtener_vistas_controlador("web",LANG);

            if($vistas=="404"){
                require_once "./views/contenidos/".LANG."/web-404.php";
            }else{
                /*---------- Header ----------*/
                include "./views/inc/".LANG."/header.php";

                /*---------- Vista ----------*/
                require_once $vistas;

                /*---------- Footer ----------*/
                include "./views/inc/".LANG."/footer.php";

                if(isset($_SESSION['cargo_sto']) && ($_SESSION['cargo_sto']=="Administrador" || $_SESSION['cargo_sto']=="Cajero")){
                    include "./views/inc/log_out_admin.php";
                }
            }
        }
        
        /*---------- Scripts ----------*/
        include "./views/inc/scripts.php"; 
    ?>
</body>
</html>
