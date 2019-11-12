<?php $v->layout("_theme"); ?>

    <section class="about_page">
        <div class="about_page_content content">
            <header class="about_header">
                <h1>Binar Digital</h1>
                <p>Agência especializada em desenvolvimento de sistemas web e marketing digital. </p>
                <p>A nossa ideia é ajudar  as empresas a criar a identidade digital prórpria e
                    ativa que permite controle de marketing digital.</p>
            </header>

            <!--FEATURES-->
            <div class="about_page_steps">
                <article class="radius">
                    <header>
                        <span class="icon icon-check-square-o icon-notext"></span>
                        <h3>Missão</h3>
                        <p>Constriur a identidade digital através da transformação digital.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <span class="icon icon-eye icon-notext"></span>
                        <h3>Visão</h3>
                        <p>Ser líder no mercado digital, com a estratégia inovadora, criativa e proporcionando benefícios aos clientes.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <span class="icon icon-trophy icon-notext"></span>
                        <h3>Valores</h3>
                        <p>Trabalho em equipe, comprometimento, inovação e ética profissional.</p>
                    </header>
                </article>
            </div>
        </div>

        <!--div class="about_page_media">
            <div class="about_media_video">
                <div class="embed">
                    <iframe width="560" height="315"
                     src="https://www.youtube.com/embed/<?= $video; ?>?rel=0&amp;showinfo=0" frameborder="0"
                     allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div>
            </div>
        </div-->

        <aside class="about_page_cta">
            <div class="about_page_cta_content container content">
                <h2>Ainda não contratou a Binar Digital?</h2>
                <p>É simples e fácil, clique no botão em baixo, deixe sua mensagem, você será atendido por um especialista.</p>
                <a href="<?= url("/contato"); ?>" title="Quero falar com um consultor"
                   class="about_page_cta_btn transition radius icon-check-square-o">Quero falar com um consultor</a>
            </div>
        </aside>
    </section>

<!-- EQUIPE-->