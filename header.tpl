<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />

        {if $templatefile == 'homepage'}
		      <meta name="description" content="Farssi.net on suomalainen n. 10 000 pelaajan internet yhteisö. Farssi.net/gamehost tarjoaa pelipalvelimia omakustannehintaan suomalaisille pelaajille. 
              Tarjontaan kuuluu niin valmiiksi asennettavat yksittäiset pelipalvelimet, kun myös VPS palvelimet. Kaikki palvelimet ajetaan tehokkailta peleille soveltuvilta palvelimilta." />
		{/if}
		{if $templatefile == 'minecraft'}
		      <meta name="description" content="Vuokraa oma Minecraft serveri Farssi.net palvelimilta alk 2.49/kk. Palvelin ajetaan ilman rajoituksia laadukkailta i9-9900k servereiltä." />
		{/if}
        {if $templatefile == 'csgo'}
                <meta name="description" content="Vuokraa oma CS:GO serveri Farssi.net palvelimilta alk 2.49/kk. FastDL kuuluu hintaan, emmekä rajoita serveriäsi pelaajasloteilla, RAM :illa tai CPU :lla." />
        {/if}
        {if $templatefile == 'valheim'}
		      <meta name="description" content="Vuokraa oma Valheim serveri Farssi.net palvelimilta alk 2.49/kk. Älä tyydy budjetti ratkaisuihin. Näissä palvelimissa ei mitään CPU tai RAM rajoja ole! Pidä maailmasi online 24/7. " />
		{/if}
        {if $templatefile == 'vps'}
		      <meta name="description" content="GameVPS on farssin itse tuottama ympäristö. Palvelimet on jaettu tehokkailta, pelikäyttöön optimaalisilta palvelinraudoilta. Saat tehokkaan kaikki prosessorin tehot pelipalvelimesi käyttöön, murto-osalla sen hinnasta." />
		{/if}
        {if $templatefile == 'fproxy'}
		      <meta name="description" content='FProxy tarjoaa käyttäjille isoille yrityksille tarkoitettua DDoS suojausta pelipalvelimille "On demand" tyyppisesti. FProxy on tarkoitettu käytettäväksi Farssi.net GameVPS tuotteiden rinnalla.'/>
		{/if}
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta author="Farssi.net">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    <link rel="shortcut icon" href="{$WEB_ROOT}/templates/{$template}/img/favicon.webp" />
    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">
    {include file="$template/includes/verifyemail.tpl"}
    {$headeroutput}
    <!--{if $templatefile == 'homepage'}-->
    
    <div class="alert alert-success" style="border-radius:0;margin:0;">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong><i class="fas fa-info-circle"></i> HUOM: </strong> Pelipalvelimien ensimmäinen kuukausi 0.01€. Käytä koodi KESAPELIT2021 tuotteen tilaamisen yhteydessä!
    </div>
    <!--{/if}-->

    <!-- Toolbar -->
    <section id="header">
        <div class="container">
            <ul class="top-nav">
                {if $languagechangeenabled && count($locales) > 1}
                <li>
                    <a href="#" class="choose-language" data-toggle="popover" id="languageChooser">
                        {$activeLocale.localisedName}
                        <b class="caret"></b>
                    </a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </li>
                {/if}
                {if $loggedin}
                <li>
                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        <i class="far fa-bell"></i>
                        {if count($clientAlerts) > 0}
                            <span class="label label-info" style="vertical-align: top;border-radius: 4px;font-size: 10px;">{lang key='notificationsnew'}</span>
                        {/if}
                        <b class="caret"></b>
                    </a>
                    <div id="accountNotificationsContent" class="hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}" class="rade-alert">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() ==     'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
                <!--
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/logout.php" class="btn">
                        <i class="far fa-sign-out-alt"></i> {$LANG.clientareanavlogout}
                    </a>
                </li>
                -->
                {else}
                <li class="primary-action">
                    <a href="{$WEB_ROOT}/cart.php?a=view" class="cart">
                        <i class="fas fa-shopping-cart"></i> <span class="badge">{$cartitemcount}</span>
                    </a>
                </li>
                {/if}
                {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-logged-in-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="fas fa-user-tie"></i>
                    </a>
                </li>
                {/if}
            </ul>
    
{*             <span class="top-contact hidden-xs" style="line-height: 34px;"><i class="far fa-comments"></i> <a href = "https://discord.farssi.net">discord.farssi.net</a></span>
     *}
                    <a class="discord-widget" href="https://discord.farssi.net" title="Liity!">
                                <img src="https://discordapp.com/api/guilds/431206231638802442/embed.png?style=banner2">
                    </a>   
        </div>
    </section>

    <!-- Navigation -->
    <section id="main-menu">
        <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target="#navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    {if $assetLogoPath}
                    <a href="{$WEB_ROOT}/index.php" class="navbar-brand"><img src="{$assetLogoPath}" alt="{$companyname}" width="44"></a>
                    {else}
                    <a href="{$WEB_ROOT}/index.php" class="navbar-brand">{$companyname}</a>
                    {/if}
                </div>
                <div id="navbar" class="navbar-offcanvas" data-direction="left">
                    {if $assetLogoPath}
                    <a href="{$WEB_ROOT}/index.php" class="navbar-brand visible-xs"><img src="{$assetLogoPath}" alt="{$companyname}" style="margin-top: -8px;"></a>
                    {else}
                    <a href="{$WEB_ROOT}/index.php" class="navbar-brand visible-xs">{$companyname}</a>
                    {/if}
                    <button type="button" class="hidden-sm hidden-md hidden-lg" data-toggle="offcanvas" data-target="#navbar">
                        &#10005;
                    </button>
                    <!--<ul class="nav navbar-nav">{include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}</ul>-->
                    {$menumanager_1}
                    <ul class="nav navbar-nav navbar-right">
                    {if $loggedin}
                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
                    {* {$menumanager_4} *}
                    {else}
                    <li class="nav-btns">
                        <p class="navbar-btn">
                            <a href="{$WEB_ROOT}/login.php" class="btn btn-outline-light navbar-btn">{$LANG.login}</a>
                        </p>
                    </li>
                    <li>
                        <p class="navbar-btn">
                            <a href="{$WEB_ROOT}/register.php" class="btn btn-primary navbar-btn"><i class="far fa-lock-open"></i> {$LANG.register}</a>
                        </p>
                    </li>
                    {/if}
                    </ul>
                </div>
            </div>
        </nav>
    </section>

    {if $templatefile == 'homepage'}    
    {else if $templatefile == 'login'}
    {else if $templatefile == 'clientregister'}
{*     {else if $templatefile == 'password-reset-container'} *}
    {else if $templatefile == 'logout'}
    {else if $templatefile == 'contact'}
    {else if $templatefile == 'vps'}
    {else if $templatefile == 'fproxy'}
    {else if $templatefile == 'vpn'}
    {else if $templatefile == 'web-hosting'}
    {else if $templatefile == 'csgo'}
    {else if $templatefile == 'gtav'}
    {else if $templatefile == 'garrysmod'}
    {else if $templatefile == 'l4d2'}
    {else if $templatefile == 'valheim'}
    {else if $templatefile == 'dayz'}
    {else if $templatefile == 'rust'}
    {else if $templatefile == 'minecraft'}
    {else if $templatefile == 'minecrafthuoltajille'}
    {else if $templatefile == '7daystodie'}
    {else if $templatefile == 'killingfloor2'}
    {else if $templatefile == 'unturned'}
    {else if $templatefile == 'terms-of-service'}
    {else if $templatefile == 'documentation'}
    {else}
    <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">
            <section class="larw-body">
                {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                    {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                    <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                    </div>
                    {/if}
                    <div class="col-md-3 pull-md-left sidebar">
                    {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                {/if}
                <!-- Container for main page display content -->
                <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
                {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                {/if}
    {/if} <!-- end content -->