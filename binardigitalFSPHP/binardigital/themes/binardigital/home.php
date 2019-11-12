<?php $v->layout("_theme"); ?>

    <!--FEATURED-->
    <article class="home_featured">
        <div class="home_featured_content container content">
            <header class="home_featured_header">
                <h1>Agência de desenvolvimento de sistemas web e Marketing digital</h1>
                <p>Hoje em dia, ter um site responsivo que se adéqua em todos os dispositivos, não é mais
                uma opção, é uma obrigação.</p>
                <p><span data-go=".home_optin"
                         class="home_featured_btn gradient gradient-green gradient-hover radius transition icon-check-square-o">Agende
                        uma reunião, sem compromisso</span></p>
                <p class="features">Markeintig conteúdo | Inbound Markeintig | SEO</p>
            </header>
        </div>

    </article>

    <!--FEATURES-->
    <div class="home_features">
        <section class="container content">
            <header class="home_features_header">
                <h2>Alavanque o seu negócio através da internet.</h2>
                <p>Uma identidade digital própria e ativa permite o controle do seu marketing digital.</p>
            </header>

            <div class="home_features_content">
                <article class="radius">
                    <header>
                        <img alt="Desenvolvimento web" title="Desenvolvimento web"
                             src="<?= theme("/assets/images/dev-web.jpg"); ?>"/>
                        <h3>Desenvolvimento Web</h3>
                        <p>Quer eu ou não, quer você ou não, o site é componente mais importante do marketing atual, concorda?
                        Na verdade a internet se popularizou graças ao site. Portanto, o seu site é o seu cartão de visita, precisa ser
                        responsivo (adéqua a todos os dispositvos que existem no mercado), layout bonito e personalizado e carregamento rápido.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <img alt="Marketing de conteúdo" title="Marketing de conteúdo"
                             src="<?= theme("/assets/images/marketing-conteudo.jpg"); ?>"/>
                        <h3>Marketing de Conteúdo</h3>
                        <p>Quando pensar em falar do seu negócio, pense em conteúdo. Quando penar em conteúdo,
                            pensa em produções e buscas multimídias. Hoje em dia, não podemos falar de marketing digital sem
                            falar do conteúdo. O conteúdo é a alma do negócio, todas as estratégias de marketing na internet
                        é voltado ao conteúdo.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <img alt="Inbound marketing" title="Inbound marketing"
                             src="<?= theme("/assets/images/imbound-marketing.jpg"); ?>"/>
                        <h3>Inbound Marketing</h3>
                        <p>O Inbound marketing se baseia na ideia de criação de conteúdo atrativo, pensando no momento
                        do consumidor sem empurrar a venda, mas sim, preocupar em resolver um problema, esclarecer uma dúvida e manter
                        um relacionamento duradouro com o consumidor.</p>
                    </header>
                </article>
            </div>
        </section>
    </div>

    <!--OPTIN-->
    <article class="home_optin">
        <div class="home_optin_content container content">
            <header class="home_optin_content_flex">
                <h2>Prencha o campo ao lado e compartilha sua dor conosco.</h2>
                <p>Agende uma reunião sem compromisso. Nosso consultor está disposto a lhe atender a qualquer momento.</p>
                <p>Queremos ajudar no que for preciso.</p>
                <p>Pronto, vamos começar?</p>
            </header>

            <div class="home_optin_content_flex">
                <span class="icon icon-check-square-o icon-notext"></span>
                <h4>Deixe o seu e-mail retornaremos de imediato:</h4>
                <form action="<?= url("/cadastrar"); ?>" method="post" enctype="multipart/form-data">
                    <div class="ajax_response"><?= flash(); ?></div>
                    <?= csrf_input(); ?>
                    <input type="text" name="first_name" placeholder="Primeiro nome:"/>
                    <input type="email" name="email" placeholder="Melhor e-mail:"/>
                    <textarea name="message" placeholder="Digite uma mensagem:"></textarea>
                    <button class="radius transition gradient gradient-green gradient-hover">Quero solicitar</button>
                </form>
            </div>
        </div>
    </article>

    <!--VIDEO-->
    <article class="home_video">
        <div class="home_video_content container content">
            <header>
                <h2>Descubra a Binar Digital</h2>
                <span data-modal=".home_video_modal" class="icon-play-circle-o icon-notext transition"></span>
            </header>
        </div>

        <div class="home_video_modal j_modal_close">
            <div class="home_video_modal_box">
                <div class="embed">
                    <iframe width="560" height="315"
                            src="https://www.youtube.com/embed/<?= $video; ?>?rel=0&amp;showinfo=0"
                            frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </article>

    <!--BLOG-->
<?php if (empty($blog)): ?>
    <div class="content content">
        <div class="empty_content">
            <img class="empty_content_cover" title="Empty Content" alt="Empty Content"
                 src="<?= theme("/assets/images/empty-content.jpg"); ?>"/>
            <h3 class="empty_content_title">Estamos trabalhando aqui</h3>
            <p class="empty_content_desc">Em breve você terá dicas e sacadas sobre como melhorar marketing da sua empresa.
                :)</p>
        </div>
    </div>
<?php else: ?>
    <section class="blog">
        <div class="blog_content container content">
            <header class="blog_header">
                <h2>Nossos artigos</h2>
                <p>Confira nossas dicas para melhorar marketing da sua empresa.</p>
            </header>

            <div class="blog_articles">
                <?php foreach ($blog as $post): ?>
                    <?php $v->insert("blog-list", ["post" => $post]); ?>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
<?php endif; ?>