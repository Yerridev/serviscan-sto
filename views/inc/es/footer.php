<footer class="footer text-center text-lg-start bg-light text-muted">
    <div class="container p-4">
        <div class="row">

            <!-- Dirección -->
            <div class="col-12 col-md-6 mb-4">
                <ul class="list-unstyled text-left">
                    <li>
                        <h5 class="font-weight-bold"><?php echo COUNTRY; ?></h5>
                    </li>
                    <li>
                        <i class="fas fa-map-marker-alt fa-fw"></i> <?php echo ADDRESS; ?>
                    </li>
                </ul>
            </div>

            <!-- Redes sociales -->
            <div class="col-12 col-md-6 mb-4">
                <h5 class="font-weight-bold">Síguenos en:</h5>
                <div class="content-redes d-flex justify-content-start">
                    <?php if (!empty(FACEBOOK)) { ?>
                        <a href="<?php echo FACEBOOK; ?>" class="me-3" target="_blank">
                            <img src="/STO/views/assets/icon/facebook.svg" alt="Facebook">
                        </a>
                    <?php } ?>
                    <?php if (!empty(INSTAGRAM)) { ?>
                        <a href="<?php echo INSTAGRAM; ?>" class="me-3" target="_blank">
                            <img src="/STO/views/assets/icon/instagram.svg" alt="Instagram">
                        </a>
                    <?php } ?>
                    <?php if (!empty(TWITTER)) { ?>
                        <a href="<?php echo TWITTER; ?>" class="me-3" target="_blank">
                            <img src="/STO/views/assets/icon/twitter.svg" alt="Twitter">
                        </a>
                    <?php } ?>
                    <?php if (!empty(YOUTUBE)) { ?>
                        <a href="<?php echo YOUTUBE; ?>" class="me-3" target="_blank">
                            <img src="/STO/views/assets/icon/youtube.svg" alt="YouTube">
                        </a>
                    <?php } ?>
                    <?php if (!empty(TIKTOK)) { ?>
                        <a href="<?php echo TIKTOK; ?>" class="me-3" target="_blank">
                            <img src="/STO/views/assets/icon/tiktok.svg" alt="TikTok">
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>

    <div class="derechos text-center p-2">
        <ul class="list-unstyled">
            <li>
                <h5 class="font-weight-bold">
                    <i class="far fa-copyright"></i> 
                    <?php echo COMPANY . " " . date("Y"); ?>
                </h5>
            </li>
            <li>
                Todos los derechos reservados: 
                <a class="text-reset fw-bold" href="https://serviscan.com" target="_blank">Grupo 04 - Tecnologías Web</a>
            </li>
        </ul>
    </div>
</footer>
