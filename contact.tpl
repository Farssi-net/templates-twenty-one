<div class="page contact-page">
    <div class="container">
        <h1>Ota yhteyttä</h1>
        <p>Farssi.net on yhteisön ylläpitämä palvelu, joten yhteisön tietotaito on myös sinunkin apunasi. Pääset kaikista helpoten puheillemme liittymällä discordiin, mutta voit myös laittaa meille vanhaa kunnon mailia. </p>
    </div>
</div>
<div class="container">
    <div class="row">
        <section class="larw-body">
            <div class="col-md-3 panel-contact">
                <div class="panel panel-default text-center">
                    <div class="panel-body contact-card">
                        <i class="fad fa-mobile-android-alt fa-2x"></i>
                        <h4>Soita</h4>
                        <p>+358 ehkätulossa?/p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 panel-contact">
                <div class="panel panel-default text-center">
                    <div class="panel-body contact-card">
                        <i class="fad fa-map-marker-smile fa-2x"></i>
                        <h4>Tapaa meidät</h4>
                        <p>Miiteissä ja ehkä assyillä.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 panel-contact">
                <div class="panel panel-default text-center">
                    <div class="panel-body contact-card">
                        <i class="fad fa-envelope fa-2x"></i>
                        <h4>Mail Us</h4>
                        <p><a href="mailto: support@farssi.net">support@farssi.net</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 panel-contact">
                <div class="panel panel-default text-center">
                    <div class="panel-body contact-card">
                        <i class="fad fa-user-headset fa-2x"></i>
                        <h4>Live Chättää</h4>
                        <p>Heti kun liityt discordiin.</p>
                    </div>
                </div>
            </div>
            {if $sent}
                {include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}
            {/if}

            {if $errormessage}
                {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
            {/if}

            {if !$sent}
            <form method="post" action="contact.php" class="form-horizontal" role="form">
                <input type="hidden" name="action" value="send" />

                <div class="form-group">
                    <label for="inputName" class="col-sm-3 control-label">{$LANG.supportticketsclientname}</label>
                    <div class="col-sm-7">
                        <input type="text" name="name" value="{$name}" class="form-control" id="inputName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-3 control-label">{$LANG.supportticketsclientemail}</label>
                    <div class="col-sm-7">
                        <input type="email" name="email" value="{$email}" class="form-control" id="inputEmail" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSubject" class="col-sm-3 control-label">{$LANG.supportticketsticketsubject}</label>
                    <div class="col-sm-7">
                        <input type="subject" name="subject" value="{$subject}" class="form-control" id="inputSubject" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputMessage" class="col-sm-3 control-label">{$LANG.contactmessage}</label>
                    <div class="col-sm-7">
                        <textarea name="message" rows="7" class="form-control" id="inputMessage">{$message}</textarea>
                    </div>
                </div>
                {if $captcha}
                    <div class="text-center margin-bottom">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                {/if}

                <div class="form-group">
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}"><i class="fal fa-paper-plane"></i> {$LANG.contactsend}</button>
                    </div>
                </div>
            </form>
            {/if}
        </section>
    </div>
</div>