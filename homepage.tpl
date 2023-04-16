{php}
    // Rust Server
    $data = file_get_contents("http://api.gametracker.rs/demo/json/server_info/95.216.36.254:28015/");
    $data = json_decode($data);
    $gamename1 = $data->gamename;
    $status1 = $data->status;
    $name1 = $data->name;
    $ip1 = $data->ip;
    $players1 = $data->players;
    $playersmax1 = $data->playersmax;

    // Dayz Server
    $data = file_get_contents("http://api.gametracker.rs/demo/json/server_info/95.216.229.96:2318/");
    $data = json_decode($data);
    $gamename2 = $data->gamename;
    $name2 = $data->name;
    $ip2 = $data->ip;
    $players2 = $data->players;
    $playersmax2 = $data->playersmax;

    // For now not
    $data = file_get_contents("http://api.gametracker.rs/demo/json/server_info/74.91.124.167:27015/");
    $data = json_decode($data);
    $gamename3 = $data->gamename;
    $name3 = $data->name;
    $ip3 = $data->ip;
    $players3 = $data->players;
    $playersmax3 = $data->playersmax;

    // Status [Vidi s Keviom]
    if($status == '1'){
         $status = '<span class="pulse"></span>';
    }
    if($status == '0'){
         $status = '<span class="pulse-1"></span>';
    }
{/php}
<section id="r-slider">
    <div id="owl-main" class="owl-carousel height-md owl-inner-nav owl-ui-lg"> 
        <!-- First Slide -->  
        <div class="item" style="background-image: url('{$WEB_ROOT}/templates/{$template}/img/slider/vps.jpg');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">GameVPS</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.6);">
                    GameVPS tuotteet ovat uusi mahdollisuus yhteisöjen ylläpitäjille. Sinun ei tarvitse investoida satoja euroja saadaksesi tehokkaan dedikoidun palvelun tehot käyttöösi. Maksat siitä mitä käytät. 
                    </p><br>
                    <div class="fadeInDown-3">
                        <a href="vps.php" class="btn btn-danger">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>
            
        <div class="item" style="background-image: url('{$WEB_ROOT}/templates/{$template}/img/slider/valheim3.png');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">Valheim</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.4);">
                    Uusi huippusuosittu survival peli! Hallitse omaa maailmaasi ja pidä se online 24/7. Voit backupata maailmasi ja hallita palvelintasi helposti farssin hallintapaneelista.</p><br/>
                    <div class="fadeInDown-3">
                        <a href="valheim.php" class="btn btn-danger">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>

        <div class="item" style="background-image: url('{$WEB_ROOT}/templates/{$template}/img/slider/slider-1.png');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">CS:GO</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.4);">
                    Pelipalvelin tai public, taivumme kaikkiin tarpeisiisi.
                     Hallintapaneelista voit asentaa ESL conffit tai sourcemodin suoraan yhdellä klikkauksella! 
                     FastDownload SYNC lataa automaattisesti custom kartat FastDL palveluun ja nopeuttaa uusien pelaajien liittymistä palvelimelle!</p><br/>
                    <div class="fadeInDown-3">
                        <a href="csgo.php" class="btn btn-danger">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>

        <!-- Second Slide -->
        <div class="item" style="background-image: url('https://external-preview.redd.it/kCwwbi0EgHp4lQ_nx43zntZbbgwH-lX10_IUO9em_U8.jpg?auto=webp&s=306c2d8173698d2c041d349170a7e44dd719e7bc');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">Rust</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.4);">
                    Rustia voit ajaa niin vanillana tai modattunakin. 
                    Paneelista löydät kaikki modit valmiina uMod asennus tapahtuu vain yhtä nappia klikkaamalla. 
                    Halutut modit voit nekin asentaa vain napin painalluksella. Viikottaiset ja kuukausittaiset resetit voit automatisoida!</p><br/>
                    <div class="fadeInDown-3">
                        <a href="rust.php" class="btn btn-warning">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>
            
        <!-- Third -->
        <div class="item" style="background-image: url('https://wallpaperaccess.com/full/171177.jpg');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">Minecraft</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.7);">
                    Farssin minecaft palvelin täyttää vaatimuksesi tarvitsit palvelinta kavereitten kanssa pelaamiseen tai osaksi suurempaa verkkoa.
                    Modit voi asentaa vain yhdellä klikkauksella. Hallintapaneeli järjestää sinulle uusimmat updatet kätevästi listaan, josta palvelimen varsiota on tarvittaessa varsin helppo vaihtaa. Spigot, Paper, Buggit kaikki valmiina. Voit myös itse ajaa omaa .jar tiedostoa, jos haluat.</p><br/>
                    <div class="fadeInDown-3">
                        <a href="minecraft.php" class="btn btn-success">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>
            
        <!-- Fourth -->
{*         <div class="item" style="background-image: url('{$WEB_ROOT}/templates/{$template}/img/slider/slider-4.png');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">GTAV CFX.re serveri</h4>
                    <p class="fadeInDown-2" style="background-color: rgb(33,34,44,0.7);">Täältä koko farssi.net on lähtöisin. GTAV modista, jota sinä hallitset. Rakenna palvelin täysin omanlaiseksesi. Saat oman databasen kylkiäisenä. Ei pelaajarajoituksia. </p><br/>
                    <div class="fadeInDown-3">
                        <a href="gtav.php" class="btn btn-success">Lue lisää <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div> *}
            
        <!-- Fifth 
        <div class="item" style="background-image: url('{$WEB_ROOT}/templates/{$template}/img/slider/slider-5.png');">
            <div class="container">
                <div class="caption vertical-center">                              
                    <h4 class="fadeInDown-1">Left 4 Dead 2 Server</h4>
                    <p class="fadeInDown-2">Fight for your life against huge hordes of zombies while you play Left 4 Dead 2 with your friends!</p>
                    <p class="fadeInDown-2">Lawr is here to give you affordable access to the best Left 4 Dead 2 dedicated server hosting out there, with none of the hassle. And with our new Game Panel interface, it’s easier than ever to get your private server started!</p><br/>
                    <div class="fadeInDown-3">
                        <a href="cart.php" class="btn btn-info">Order now <i class="fas fa-chevron-right"></i></a>
                    </div>                           
                </div>
            </div>
        </div>  -->                  
    </div>
</section>

<div class="choose-games">
    <div class="container">
        <h1 class="text-center">Pelipalvelimet, VPS ja GameVPS<br/>Pelaajien verkkopalvelut, yhdestä paikasta.</h1>
        <div class="row">
            <!--
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-csgo.png"> Counter Strike Global Offensive</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/csgo.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-garrysmod.png"> Garry's Mods</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/gm.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-l4d2.png"> Left 4 Dead 2</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/l4d2.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-rust.png"> Rust</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/rust.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-minecraft.png"> Minecraft</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/mc.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-7daystodie.png"> 7 Days to Die</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/7dtd.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-kf2.png"> Killing Floor 2</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/kf2.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <div class="card-header">
                            <a href="csgo.php"><img src="{$WEB_ROOT}/templates/{$template}/img/game-icons/game-unturned.png"> Unturned</a>
                        </div>
                        <img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/unturned.webp">
                        <div class="card-footer">
                            <a href="csgo.php" class="btn btn-primary btn-block"><i class="fas fa-chevron-double-right"></i> Order</a>
                        </div>
                    </div>
                </div>
            </div>
            -->

            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="valheim.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/valheim.jpeg"></a>
                        <img class="img-hover" width="80" style="left: 34%;" src="{$WEB_ROOT}/templates/{$template}/img/game-h/valheimlogo.png">
                        <div class="card-header">
                            <a href="valheim.php"><i class="fas fa-chevron-double-right"></i> Valheim</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        
                        <a href="csgo.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/csgo.webp"></a>
                        <img class="img-hover" width="100" style="left: 32%;" src="{$WEB_ROOT}/templates/{$template}/img/game-h/csgo.webp">
                        <div class="card-header">
                            <a href="csgo.php"><i class="fas fa-chevron-double-right"></i> Counter Strike Global Offensive</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="garrysmod.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/gm.webp"></a>
                        <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/garry.webp">
                        <div class="card-header">
                            <a href="garrysmod.php"><i class="fas fa-chevron-double-right"></i> Garry's Mods</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="dayz.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/dayzbg.webp"></a>
                        <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/dayz.png">
                        <div class="card-header">
                            <a href="dayz.php"><i class="fas fa-chevron-double-right"></i> Dayz SA</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="rust.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/rust.webp"></a>
                        <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/rust.webp">
                        <div class="card-header">
                            <a href="rust.php"><i class="fas fa-chevron-double-right"></i> RUST</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="minecraft.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/mc.webp"></a>
                        <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/minecraft.webp">
                        <div class="card-header">
                            <a href="minecraft.php"><i class="fas fa-chevron-double-right"></i> Minecraft: Java & Bedrock</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
                <div class="hover">
                    <div class="card">
                        <a href="7daystodie.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/7dtd.webp"></a>
                        <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/7.webp">
                        <div class="card-header">
                            <a href="7daystodie.php"><i class="fas fa-chevron-double-right"></i> 7 Day to Die</a>
                        </div>
                        </div>
                    </div>
                </div>
{*                 <div class="col-sm-6 col-md-4 col-lg-3">
                    <div class="hover">
                        <div class="card">
                            <a href="gtav.php"><img class="card-img-top" src="{$WEB_ROOT}/templates/{$template}/img/games/gta5.png"></a>
                            <img class="img-hover" width="50" src="{$WEB_ROOT}/templates/{$template}/img/game-h/fivem.png">
                            <div class="card-header">
                                <a href="gtav.php"><i class="fas fa-chevron-double-right"></i> GTA V Cfx.re</a>
                            </div>
                        </div>
                    </div>
                </div> *}
            </div>
        </div>
    </div>
</div>
<div class="features-web">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-3" data-aos="zoom-out-up">
                <div class="media">
                    <div class="media-left">
                        <div class="media-icon purple">
                            <i class="fas fa-users"></i>
                        </div>
                    </div>
                    <div class="media-body">
                        <h4 class="mt-0">Yhteisö tukena</h4>
                        <p>Et ole yksin. Farssin yhteisö pitää sisällään yli 7 000 suomalaista videopelien pelaajaa. Hyppää discordiimme ja saat varmasti apua ongelmiisi. Palvelimen käyttämisestä sen modaamiseen.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3" data-aos="zoom-out-up">
                <div class="media">
                    <div class="media-left">
                        <div class="media-icon green">
                            <i class="fas fa-tools"></i>
                        </div>
                    </div>
                    <div class="media-body">
                        <h4 class="mt-0">Mukautuvuus</h4>
                        <p>Pelipalvelimet ovat kaikki uniikkeja ja me tahdomme tuoda sinulle hallintajärjestelmään kaikki uusimmat pluginit ja modit, automaattisesti, nopeasti ja täysin ilmaiseksi.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3" data-aos="zoom-out-up">
                <div class="media">
                    <div class="media-left">
                        <div class="media-icon orange">
                            <i class="fas fa-euro-sign"></i>
                        </div>
                    </div>
                    <div class="media-body">
                        <h4 class="mt-0">Ei niin hintava</h4>
                        <p>Farssi.net/GameHost sivuston tarkoituksena on kattaa Farssi.net yhteisön palvelinkulut. Pyörität siis palvelinta meidän kautta käytännössä omakustannehintaan.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3" data-aos="zoom-out-up">
                <div class="media">
                    <div class="media-left">
                        <div class="media-icon pink">
                            <i class="far fa-server"></i>
                        </div>
                    </div>
                    <div class="media-body">
                        <h4 class="mt-0">Skaalautuvuus</h4>
                        <p>Omat palvelumme kattavat tuhansia uniikkeja pelaajia päivittäin. Pystymme skaalaamaan palvelusi yhteisösi tarpeen mukaan. Jos sinulla on kysymyksiä, voit aina tulla juttelemaan kanssamme discordiin omasta palvelimestasi!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="test-server">
        <h1 data-aos="fade-up">Heräsikö kysymyksiä?</h1>
      {*   <br><center>(Saat oman palvelimesi alle pyytämällä)</center> *}
        <div class="row">
         {*    <div class="col-sm-6 col-md-4" style="padding-left: 38px;padding-right: 38px;">
            <a href="https://www.battlemetrics.com/servers/dayz/9618948"><img src="https://cdn.battlemetrics.com/b/standardVertical/9618948.png?_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6InN0YW5kYXJkVmVydGljYWwiLCJzZXJ2ZXIiOjk2MTg5NDgsIm9wdGlvbnMiOnsiZm9yZWdyb3VuZCI6IiNFRUVFRUUiLCJsaW5rQ29sb3IiOiIjMTE4NWVjIiwibGluZXMiOiIjMzMzMzMzIiwiYmFja2dyb3VuZCI6IiMyMjIyMjIiLCJjaGFydCI6InBsYXllcnM6MjRIIiwiY2hhcnRDb2xvciI6IiNGRjA3MDAiLCJtYXhQbGF5ZXJzSGVpZ2h0IjoiMzAwIn0sImxpdmVVcGRhdGVzIjp0cnVlLCJ1c2VyX2lkIjoyMDM1OSwiaWF0IjoxNjExNDAyNDQ0fQ.oF4mpucOCKE0bOui9J29KWdRI4LJBW9Dn1GDCaxZpL8" /></a>
            *}      <!--
                <div class="card" data-aos="zoom-in-up">
                    <div class="card-body test-1">
                        <h4 class="game">{php}echo $gamename1{/php} <span class="pulse"></span></h4>
                        <p class="ip"><span id="ip1">{php}echo $ip1{/php}</span> <a data-toggle="tooltip" data-placement="top" title="Copy" onclick="copyToClipboard('#ip1')"><i class="far fa-copy"></i></a></p>
                        <h4 class="player">Players</h4>
                        <span class="player-number">{php}echo $players1;{/php} / {php}echo $playersmax1;{/php}</span>
                    </div>
                </div>
                -->
      {*       </div>
            <div class="col-sm-6 col-md-4" style="padding-left: 38px;padding-right: 38px;">
            <a href="https://www.battlemetrics.com/servers/rust/3356940"><img src="https://cdn.battlemetrics.com/b/standardVertical/3356940.png?foreground=%23EEEEEE&linkColor=%231185ec&lines=%23333333&background=%23222222&chart=players%3A24H&chartColor=%23FF0700&maxPlayersHeight=300" /></a>
         *}        <!--
                <div class="card" data-aos="zoom-in-up">
                    <div class="card-body test-3">
                        <h4 class="game">{php}echo $gamename3{/php} <span class="pulse"></span></h4>
                        <p class="ip"><span id="ip3">{php}echo $ip3{/php}</span> <a data-toggle="tooltip" data-placement="top" title="Copy" onclick="copyToClipboard('#ip3')"><i class="far fa-copy"></i></a></p>
                        <h4 class="player">Players</h4>
                        <span class="player-number">{php}echo $players3;{/php} / {php}echo $playersmax3;{/php}</span>
                    </div>
                </div>
                -->
            </div>
            <div class="col-sm-6 col-md-4" style="padding-left: 38px;padding-right: 38px;">
            <!--
                <div class="card" data-aos="zoom-in-up">
                    <div class="card-body test-2">
                        <h4 class="game">{php}echo $gamename2{/php} <span class="pulse"></span></h4>
                        <p class="ip"><span id="ip2">{php}echo $ip2{/php}</span> <a data-toggle="tooltip" data-placement="top" title="Copy" onclick="copyToClipboard('#ip2')"><i class="far fa-copy"></i></a></p>
                        <h4 class="player">Players</h4>
                        <span class="player-number">{php}echo $players2;{/php} / {php}echo $playersmax2;{/php}</span>
                    </div>
                </div>
            -->
            </div>
        </div>
    </div>
</div>
<div class="faqs">
    <div class="container">
        <h1 data-aos="fade-up">UKK</h1>
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                    <h4 class="panel-title">
                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Mikä Farssi.net?<span> </span></a>
                    </h4>
                </div>
                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                    <div class="panel-body">
                    Farssi.net on täysin suomalainen, roolipelaamisen kautta löydetty peliyhteisö. Ajamme lukuisan määrän omia palvelimia, joista osa on julkisia ja osa yhteisön jäsenten käyttämiä omiin tarkoituksiinsa. 
                    Farssi.net/GameHost on perustettu tarpeeseen kattaa oman yhteisön palvelinkulut. Käytännössä kuitenkin toiminta on jo laajentunut siihen pisteeseen, että ajamme omia palveluitamme gamehostingin rinnalla ja asiakkaat nauttivat tilanteessa, jossa heidän pitää pitkälti maksaa vain palvelun sisäänostohintaa. Ajamme järjestelmässämme muutamaa tuhatta yksittäistä palvelinprosessia.    
                        
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Miksi käyttää Farssi.net palveluita?<span></span></a>
                    </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                    <div class="panel-body">
                        Farssi.net ajaa omat palvelunsa täysin samoista järjestelmistä, mitä myymme ulos näillä sivuilla. Voit olla varma, että jokainen palvelu toimii palvelimen puolesta niin hyvin kuin se vain voi toimia.
                        Luotamme itse omiin palveluihimme ja niin tekee myös suuri määrä isoja suomalaisia peliyhteisöjä. Meidän kautta niin iso kuin pieni yhteisö pystyy ajamaan kaikki palvelut yhdestä paikasta todella kätevästi.
                        <br><br>
                        Jos yhteisösi kaipaa itse hallittua alustaa, voit ajaa palvelusi oman VPS palvelimen tai GameVPS (itse käytämme usein näitä raskaimmille peleille) kautta. Mikäli tahdot panostaa enemmän itse pelaamiseen, tai palvelimen kehitykseen, voit ajaa useimmat pelit myös hallintapaneelimme kautta.
                        <br><br>
                        Kaikenkaikkiaan Farssi.net/GameHost on palvelu, joka on pelaajilta pelaajille muodossa toteutettu. Meidän intressi ei ole nuolla persettäsi, meidän intressimme on, että palvelut toimivat mahdollisimman hyvin.

                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">TCAdmin? Palvelinhallinta? Mitä se pitää sisällään?<span></span></a>
                    </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                    <div class="panel-body">
                    Käytämme palvelimien hallintaan TCAdmin pelihallinta sovellusta. Käytännössä hallintapaneelista löytyy kaikki, mitä pelipalvelimen pyörittämiseen tarvitsee.
                    Hallintapaneeli on webselaimen kautta käytettävä sivusto, josta pystyt hallitsemaan omaa pelipalvelintasi. Käytännössä pelipalvelimesi pyörii aivan samalla tavalla, kuin pyörittäisit sitä omalla koneella tai dedikoidulla palvelimella. Se on päällä silloin kun haluat ja miten haluat. Hallintapaneelin tarkoitus on helpottaa palvelimen hallintaan liittyviä jokapäiväisiä toimintoja.
                    <br><br><b>Hallintapaneelissa on mm.: </b>
                    <li>FTP(clientin kautta ja suoraan selaimesta) yhteyden, jolla liikuttaa palvelimen tiedostoja. 
                    <li>MySQL database ja sen hallinta.
                    <li>Statistiikkoja palvelimesi pelaajamääristä ja resurssien käytöstä. 
                    <li>Automatisoitavat toiminnot, kuten updatet, restartit jne.
                    <li>Yleisimmät pluginit yhden napin asennuksella.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFour">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Liian halpa? Miten tää toimii?<span></span></a>
                    </h4>
                </div>
                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                    <div class="panel-body">
                    Tarkoituksena Farssin GameHost sivulla on tuottaa palvelimet farssi.net yhteisön ylijäävältä palvelinraudalta. Pelipalvelinten myynnin ansiosta pystymme kasvattamaan omaa kapasiteettiamme ja pienentää palvelinten pyörittämisestä aiheutuvia kustannuksia. Meillä ei ole tarkoitus hyötyä sinun palvelimestasi rahallisesti. Maksat palvelimestasi reilusti vain omakustannehinnan.
                    <br><br>
                    Osassa tarjotuista palvelimissa on vakiona "-Powered by Farssi.net" mainos, jolla pyrimme saamaan lisää näkyvyyttä yhteisöllemme. Pääset aina tuosta shoutoutista eroon pientä kuukausittaista maksua vastaan. Mikäli palvelimesi alkaa käyttämään resursseja enemmän ja sen suosio nousee, maksat palvelimestasi omavastuu osuuden. Sovimme asiasta kuitenkin aina sinun kanssa yhdessä.
                    <br><br>
                    Esimerkkejä suuremmista farssin asiakkaista alla:
                    <li>Rust 250-300slot - 20€/kk
                    <br><br> Ei siis mitenkään kallista, kun verrataan oikeastaan mihinkä muuhun alalla toimivaan yritykseen.
                    </div>
                </div>
            </div>
            <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingFive">
                    <h4 class="panel-title">
                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Voinko hallita palvelinta kaverini kanssa?<span></span></a>
                    </h4>
                </div>
                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                    <div class="panel-body">
                    Voit jakaa palvelimellesi käyttöoikeuden täysin miten haluat. Voit luoda erillisen alikäyttäjän jopa maksupaneeliin, jossa toisella henkilöllä on pääsy myös maksamaan maksuja.
                    Voit myös jakaa oikeuden käyttää itse palvelintasi luomalla erilliset tunnukset yksittäisille admineille. Voit rajata käyttöoikeuksia itse valitsemallasi tavalla.
                    Sinä päätät keneen luotat ja miten palvelintasi haluat hallinnoida.
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="customers">
        <h1 data-aos="fade-up">Asiakkailta kerättyä</h1>
        <section class="customer-logos slider">
            <div class="slide">
                <div class="media">
                    <div class="media-left">
                        <img class="img-circle" class="image" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/76/76ecaa734b0dd3738baa980f4c1ebcefeca4b0d8_full.jpg">
                    </div>
                    <div class="media-body">
                        <h5 class="mt-0">Weleho ~ <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></h5>
                        <p>Olen ollut farssilla jäsenenä päälle kaksi vuotta. Homma on toiminut kun junan vessa, eli nopeasti ja suoraan radalle. Kukaan ei saa täyttä viittä tähteä.</p>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="media">
                    <div class="media-left">
                        <img class="img-circle" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/7e/7e52fe435f9e14840eabd114b4d22fd95c355e6c_full.jpg" alt="" width="80">
                    </div>
                    <div class="media-body">
                        <h5 class="mt-0">Epex ~ <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></h5>
                        <p>Aloitin oman rust serverin pyörittämisen farssilla joskus 2019. Ei oikein kiinnostus riittänyt pitämään siitä huolta, mutta onneksi Farssin muu ylläpito hoiti sitä puolestani. Palvelin poppasi vuoden 2021 alussa.</p>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="media">
                    <div class="media-left">
                        <img class="img-circle" src="https://static-cdn.jtvnw.net/jtv_user_pictures/53661e10-3b29-4ad9-82cb-cec04a07de69-profile_image-300x300.png" alt="" width="80">
                    </div>
                    <div class="media-body">
                        <h5 class="mt-0">HoikkiS ~ <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></h5>
                        <p>RP :tä olen farssin palvelimilla pelaillut jo pitkään. Nyt laitettiin farssin kautta oma DayZ serveri pystyy ja serveri poppasi välittömästi. Farssin ylläpito auttoi myös palvelimen rakentamisessa!</p>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="media">
                    <div class="media-left">
                        <img class="img-circle" src="https://cdn.akamai.steamstatic.com/steamcommunity/public/images/avatars/f0/f05712192e78ffac7d91f39bae3053bad15e2f1b_full.jpg" alt="" width="80">
                    </div>
                    <div class="media-body">
                        <h5 class="mt-0">Letku_Jyppe ~ <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></h5>
                        <p>Toista vuotta on hellcityn TS palvelin jaettu farssin kanssa. Supporttiakin on saatu. Itse leachaan farssin discordissa kaikki mehevimmät juorut.</p>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<section id="news">
	<div class="container">
		{if $twitterusername}
    	<h2>{$LANG.twitterlatesttweets}</h2>
    	<div id="twitterFeedOutput">
        	<p class="text-center"><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
    	</div>
    	<script type="text/javascript" src="templates/{$template}/js/twitter.js"></script>
		{elseif $announcements}
		<div class="news-container">
	    	<h1>{$LANG.news}</h1>
	    	<div class="row">
		    {foreach $announcements as $announcement}
		        {if $announcement@index < 2}
		        <div class="col-md-6">
		            <div class="announcement-single">
		                <span class="icon"><i class="icon-news"></i></span>
		                <span class="date">{$carbon->translatePassedToFormat($announcement.rawDate, 'M jS')}</span>
		                <h3>
		                    <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}">{$announcement.title}</a>
		                </h3>

		                <blockquote>
		                    <p>
		                        {if $announcement.text|strip_tags|strlen < 150}
		                            {$announcement.text}
		                        {else}
		                            {$announcement.summary}
		                            <!--<a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="label label-primary">{$LANG.readmore} &raquo;</a>-->
		                        {/if}
		                    </p>
		                </blockquote>

		                {if $announcementsFbRecommend}
		                    <script>
		                        (function(d, s, id) {
		                            var js, fjs = d.getElementsByTagName(s)[0];
		                            if (d.getElementById(id)) {
		                                return;
		                            }
		                            js = d.createElement(s); js.id = id;
		                            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
		                            fjs.parentNode.insertBefore(js, fjs);
		                        }(document, 'script', 'facebook-jssdk'));
		                    </script>
		                    <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
		                    <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
		                {/if}
		            </div>
		            </div>
		        {/if}
		    {/foreach}
		    </div>
		</div>
		{/if}
	</div>
</section>