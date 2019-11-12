<?php $v->layout("_theme"); ?>

    <section class="about_page">
        <div class="about_page_content content">
            <header class="about_header">
                <h1>Confira nossos serviços</h1>
                <p>Definimos as estratégias digitais a partir de uma visão efetiva e coésa, afim de ajudar a empresa a construir uma identidade
                    digital com a DNA digital própria.</p>
            </header>

            <!--FEATURES-->
            <div class="home_features_content">
                <article class="radius">
                    <header>
                        <img alt="Marketing Digital" title="Marketing Digital"
                             src="<?= theme("/assets/images/marketing-digital.jpg"); ?>"/>
                        <h3>Marketing Digital</h3>
                        <p>Cria a identidade digital da sua empresa ou marca. A identidade digital representa muito mais
                        que o nosso perfil nas redes sociais, envolve também os terceiros que compõem a identidade da sua empresa.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <img alt="Transformação Digital" title="Transformação Digital"
                             src="<?= theme("/assets/images/transformacao-digi.jpg"); ?>"/>
                        <h3>Transformação Digital</h3>
                        <p>Transforma a sua empresa digitalmente usando todos os componentes tecnológicas, no desempenho,
                            na melhoria de atendimento e melhorar os resultados.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <img alt="Mídia Social" title="Mídia Social"
                             src="<?= theme("/assets/images/social-media.jpg"); ?>"/>
                        <h3>Mídia Social</h3>
                        <p>Ficar fora das mídias e redes sociais, significa abdicar
                            de um espaço importante e deixar a comunicação correndo solta.</p>
                    </header>
                </article>
            </div>

            <div class="home_features_content">
                <article class="radius">
                    <header>
                        <img alt="SEO" title="SEO"
                             src="<?= theme("/assets/images/seo.jpg"); ?>"/>
                        <h3>SEO</h3>
                        <p>As técnicas de SEO ajudam deixar o site mais fácil de ser encontrado
                            pelos buscadores, como o Google e outros sites de busca.</p>
                    </header>
                </article>

                <article class="radius">
                    <header>
                        <img alt="Mídia de performance" title="Mídia de performance"
                             src="<?= theme("/assets/images/midia-performance.jpg"); ?>"/>
                        <h3>Mídia de Performance</h3>
                        <p>Uma das estratégias mais importante do marketing atual. Esse tipo de anúncio é pago por
                            um valor variável, depende do tipo de performance que pretende realizar.
                            Performance pode ser <strong>CMP</strong> (Custo por mil impressões) ou <strong>CPC</strong> (Custo por clique).</p>
                    </header>
                </article>
                <article class="radius">
                    <header>
                        <img alt="E-mail Marketing" title="E-mail Marketingr"
                             src="<?= theme("/assets/images/email-marketing.jpg"); ?>"/>
                        <h3>E-mail Marketing</h3>
                        <p>Cria um relacionamento direto com o consumidor. Mantendo o consumidor
                            pordentro das novidades da empresa e realizar pôs venda.</p>
                    </header>
                </article>


            </div>

        </div>

    </section>

<?php if (!empty($faq)): ?>
    <section class="faq">
        <div class="faq_content content container">
            <header class="faq_header">
                <img class="title_image" title="Perguntas frequentes" alt="Perguntas frequentes"
                     src="<?= theme("/assets/images/faq-title.jpg"); ?>"/>
                <h3>Perguntas frequentes:</h3>
                <p>Confira as principais dúvidas e repostas sobre marketing digital.</p>
            </header>
            <div class="faq_asks">
                <?php foreach ($faq as $question): ?>
                    <article class="faq_ask j_collapse">
                        <h4 class="j_collapse_icon icon-plus"><?= $question->question; ?></h4>
                        <div class="faq_ask_coll j_collapse_box"><?= $question->response; ?></div>
                    </article>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
<?php endif; ?>