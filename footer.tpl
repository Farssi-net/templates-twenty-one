
                </div><!-- end content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                    {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>

<!-- Top Footer -->
<div class="top-footer">
    <div class="container">
        {if $loggedin}
        <p>Näytä kaikki omat palvelimet, jotka olet meiltä hommannut <a href="{$WEB_ROOT}/clientarea.php?action=products" class="btn btn-warning btn-sm">Omat palvelut</a></p>
        {else}
        <p>Eiköhän aloiteta? Tehdäänpä tunnukset... <a href="{$WEB_ROOT}/register.php" class="btn btn-warning btn-sm">Rekisteröidy</a></p>
        {/if}
    </div>
</div>

<!-- Bottom Footer -->
<div class="bottom-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="contact">
                    <h3>Et löytänyt haluttua peliä?</h3>
                    <p>Jotain kysyttävää? Ei muutakun kysymään! <br>
                    Yhteisöstämme löydät kyllä vastaukset nopeasti mieltä askarruttaviin asioihin!</p>
                    <a class="discord-widget" href="https://discord.farssi.net" title="Liity!">
                                <img src="https://discordapp.com/api/guilds/431206231638802442/embed.png?style=banner2">
                    </a>                
                </div>
{*                 <div class="social">
                    <a href="https://discord.farssi.net/"><i class="fab fa-discord"></i></a>
                </div> *}
            </div>
            <div class="col-md-2">
                <h3>Sivukartta</h3>
                <ul>
                    <li><a href="">Etusivu</a></li>
                    <li><a href="cart.php">Laskutus</a></li>
                    <li><a href="https://farssi.net/foorumi">Farssi foorumit</a></li>
                    <li><a href="http://hallinta.farssi.net">Hallintapaneeli</a></li>
                    <li><a href="{$WEB_ROOT}/knowledgebase">FAQ</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Suosituimmat pelit</h3>
                <ul>
                    <li><a href="valheim.php">Valheim</a></li>
                    <li><a href="minecraft.php">Minecraft</a></li>
                    <li><a href="csgo.php">Counter Strike :Global Offensive</a></li>
                    <li><a href="dayz.php">Dayz</a></li>
                    <li><a href="7daystodie.php">7 Day to Die</a></li>
                    <li><a href="garrysmod.php">Garry's Mod</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Keitä me olemme?</h3>
                <p class="text">Farssi.net on suomalainen peliyhteisö. Palvelu on löydetty jo vuonna 2018, joten statistisesti olemme täällä vielä huomennakin. Palvelun ylläpitäjät ovat kokeneita pelipalvelinten tunaajia ja rakentelua on tehty eri palvelimien parissa yli 16 vuotta. Voit siis kutsua meitä boomereiksi. <a href="https://farssi.net/about/" target="_blank" rel="noopener noreferrer">Lue meistä lisää...</a></p>
                <img class="logo" width="60" src="{$assetLogoPath}">
            </div>
        </div>
    </div>
</div>
<section id="footer">
    <div class="container">
        <p class="pull-left">{lang key="copyrightFooterNotice" year=$date_year company=$companyname}</p>
        <p class="pull-right"><a href="terms-of-service.php">Terms of Services</a></a></p>
    </div>
</section>
<button class="button__scroll--up"><span class="fas fa-chevron-up"></span></button>

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
                {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>

<!-- Main JS -->
<script src="{$WEB_ROOT}/templates/{$template}/js/main.js?v={$versionHash}"></script>

<!-- Slick -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js?v={$versionHash}"></script>

<!-- jQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js?v={$versionHash}"></script>

<!-- OWL Slider -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.owlcarousel/1.31/owl.carousel.js?v={$versionHash}"></script>

<!-- AOS -->
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>

{include file="$template/includes/generate-password.tpl"}
{$footeroutput}

</body>
</html>
