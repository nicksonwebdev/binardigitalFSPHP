<?php $v->layout("_theme"); ?>

<article class="optin_page">
    <div class="container content">
        <div class="optin_page_content">
            <img alt="Cadastro com sucesso" title="Cadastro com sucesso"
                 src="<?= theme("/assets/images/optin-success.jpg"); ?>"/>

            <h1>Agradecemos o seu contato. :)</h1>
            <p> o nosso consultor entrará em com você brevemente.</p>
            <a href="<?= url("/blog"); ?>" title="Logar-se"
               class="optin_page_btn gradient gradient-green gradient-hover radius">Voltar para o site</a>
        </div>
    </div>
</article>