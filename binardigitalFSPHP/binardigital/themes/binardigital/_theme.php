<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="mit" content="2019-08-23T22:34:26-03:00+169374">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <!-- Tag de FACEBOOK -->
    <meta property="og:url" content="https://www.binardigital.com.br/blog" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="Agência de desenvolvimento sistemas para web e Marketing digital" />
    <meta property="og:description" content="Agência especializada em desenvolvimento de sistemas para web e Marketing digital" />
    <meta property="og:image" content="https://www.binardigital.com.br/images/2018/10/os-beneficios-da-transformacao-digital-para-as-micros-e-pequenas-empresas.jpg" />
    <meta property="og:image:width" content="1200" />
    <meta property="og:image:height" content="630" />
    <meta property="fb:app_id" content="522086211666175" />
    <meta property="og:video" content="" />
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:type" content="https://www.binardigital.com.br/blog" />

    <?= $head; ?>

    <link rel="icon" type="image/png" href="<?= theme("/assets/images/favicon.png"); ?>"/>
    <link rel="stylesheet" href="<?= theme("/assets/style.css"); ?>"/>
</head>
<body>

<div class="ajax_load">
    <div class="ajax_load_box">
        <div class="ajax_load_box_circle"></div>
        <p class="ajax_load_box_title">Aguarde, carregando...</p>
    </div>
</div>

<!--HEADER-->
<header class="main_header gradient gradient-green">
    <div class="container">
        <div class="main_header_logo">
            <h1><a class="icon- transition" title="Home" href="<?= url(); ?>">
                    <img src="<?= theme("/assets/images/logo.png"); ?>" />Binar<b>Digital</b></a></h1>
        </div>

        <nav class="main_header_nav">
            <span class="main_header_nav_mobile j_menu_mobile_open icon-menu icon-notext radius transition"></span>
            <div class="main_header_nav_links j_menu_mobile_tab">
                <span class="main_header_nav_mobile_close j_menu_mobile_close icon-error icon-notext transition"></span>
                <a class="link transition radius" title="Home" href="<?= url(); ?>">Home</a>
                <a class="link transition radius" title="Serviços" href="<?= url("/servicos"); ?>">Serviços</a>
                <a class="link transition radius" title="A agência" href="<?= url("/sobre"); ?>">A Agência</a>
                <a class="link transition radius" title="Blog" href="<?= url("/blog"); ?>">Blog</a>
                <a class="link login transition radius icon-sign-in" title="Fale com especialista"
                   href="<?= url("/contato"); ?>">Fale com um
                    consultor</a>
            </div>
        </nav>
    </div>
</header>

<!--CONTENT-->
<main class="main_content">
    <?= $v->section("content"); ?>
</main>

<?php if ($v->section("optout")): ?>
    <?= $v->section("optout"); ?>
<?php else: ?>
    <article class="footer_optout">
        <div class="footer_optout_content content">
            <span class="icon icon-bullhorn icon-notext"></span>
            <h2>A internet é feita de pessoas.</h2>
            <p>Relacionamento, informação, comunicação e entretenimento!</p>
            <a href="<?= url("/contato"); ?>"
               class="footer_optout_btn gradient gradient-green gradient-hover radius icon-check-square-o">Fale com um
                consultor</a>
        </div>
    </article>
<?php endif; ?>

<!--FOOTER-->
<footer class="main_footer">
    <div class="container content">
        <section class="main_footer_content">
            <article class="main_footer_content_item">
                <h2>Sobre a agência:</h2>
                <p>Agência especializada em desenvolvimento websites e marketing digital.</p>
                <p>A nossa ideia é ajudar as micros e pequenas empresas de diferentes nicho a criar a prórpria identidade digital
                    ativa que permite controle de marketing digital, afim de concorrer com os demais.</p>
            </article>

            <article class="main_footer_content_item">
                <h2>Mais:</h2>
                <a class="link transition radius" title="Home" href="<?= url(); ?>">Home</a>
                <a class="link transition radius" title="Sobre" href="<?= url("/servicos"); ?>">Serviços</a>
                <a class="link transition radius" title="A Agência" href="<?= url("/sobre"); ?>">A Agência</a>
                <a class="link transition radius" title="Blog" href="<?= url("/blog"); ?>">Blog</a>
                <a class="link transition radius" title="Fale com consultor" href="<?= url("/contato"); ?>">Fale com um consultor</a>
            </article>

            <article class="main_footer_content_item">
                <h2>Contato:</h2>
                <p class="icon-phone"><b>Telefone:</b><br> +55 11 96255-5564</p>
                <p class="icon-phone"><b>Telefone:</b><br> +55 11 99431-7246</p>
                <p class="icon-envelope"><b>Email:</b><br> contato@binardigital.com</p>
                <p class="icon-map-marker"><b>Endereço:</b><br> São Paulo, SP/Brasil</p>
            </article>


            <article class="main_footer_content_item social">
                <h2>Social:</h2>
                <a target="_blank" class="icon-whatsapp"
                   href="https://web.whatsapp.com/<?= CONF_SOCIAL_WHATSAPP_PAGE; ?>" title="BinarDigital no WhatsApp">/BinarDigital</a>
                <a target="_blank" class="icon-facebook"
                   href="https://www.facebook.com/<?= CONF_SOCIAL_FACEBOOK_PAGE; ?>" title="BinarDigital no Facebook">/BinarDigital</a>
                <a target="_blank" class="icon-instagram"
                   href="https://www.instagram.com/<?= CONF_SOCIAL_INSTAGRAM_PAGE; ?>" title="BinarDigital no Instagram">@BinarDigital</a>
                <a target="_blank" class="icon-youtube" href="https://www.youtube.com/<?= CONF_SOCIAL_YOUTUBE_PAGE; ?>"
                   title="BinarDigital no YouTube">/BinarDigital</a>
            </article>
        </section>
        <section>
            <p class="center">Copyright &copy; 2019 - Binar Digital | Todos os direitos reservados </p>
        </section>
    </div>

</footer>

<script src="<?= theme("/assets/scripts.js"); ?>"></script>
<?= $v->section("scripts"); ?>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-150039549-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-150039549-1');
</script>

<script>
    !function(f,b,e,v,n,t,s)
    {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window, document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '2556369921088288');
    fbq('track', 'PageView');
</script>

</body>
</html>