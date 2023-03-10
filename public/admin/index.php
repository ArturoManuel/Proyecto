<?php require_once("../../resources/config.php"); ?>

<?php include(VIEW_BACK . DS . "head.php"); ?>
        <!-- Sidebar -->
        <?php include(VIEW_BACK . DS . "sidebar.php"); ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php include(VIEW_BACK . DS . "topnav.php"); ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <?php
                        // echo $_SERVER['REQUEST_URI'];
                        if($_SERVER['REQUEST_URI'] == '/dw2022-4/04%20CMS/public/admin/' || $_SERVER['REQUEST_URI'] == '/dw2022-4/04%20CMS/public/admin/index.php'){
                            include(VIEW_BACK . DS . "dashboard.php");
                        }
                        if(isset($_GET['header'])){
                            include(VIEW_BACK . DS . "header.php");
                        }
                        if(isset($_GET['portafolio'])){
                            include(VIEW_BACK . DS . "portafolio.php");
                        }
                        if(isset($_GET['portafolio_pendiente'])){
                            include(VIEW_BACK . DS . "portafolio_pendiente.php");
                        }
                        if(isset($_GET['portafolio_add'])){
                            include(VIEW_BACK . DS . "portafolio_add.php");
                        }
                        if(isset($_GET['portafolio_edit'])){
                            include(VIEW_BACK . DS . "portafolio_edit.php");
                        }
                        if(isset($_GET['comentarios'])){
                            include(VIEW_BACK . DS . "comentarios.php");
                        }
                        if(isset($_GET['com_aprobados'])){
                            include(VIEW_BACK . DS . "com_aprobados.php");
                        }
                        if(isset($_GET['com_desaprobados'])){
                            include(VIEW_BACK . DS . "com_desaprobados.php");
                        }
                        if(isset($_GET['comentariosgenerales'])){
                            include(VIEW_BACK . DS . "comentariosgenerales.php");
                        }
                    ?>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php include(VIEW_BACK . DS . "footer.php"); ?>