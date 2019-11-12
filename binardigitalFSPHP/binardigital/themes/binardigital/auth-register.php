<?php $v->layout("_theme"); ?>

<article class="auth">
    <div class="auth_content container content">
        <header class="auth_header">
            <h1>Retornaremos de imediato.</h1>
            <p>Agende uma reunião, sem compromisso.</p>
            <p> Nosso consultor está disposto a lhe atender a qualquer momento.</p>
        </header>

        <form class="auth_form" action="<?= url("/contato"); ?>" method="post" enctype="multipart/form-data">
            <div class="ajax_response"><?= flash(); ?></div>
            <?= csrf_input(); ?>

            <label>
                <div><span class="icon-user">Nome:</span></div>
                <input type="text" name="first_name" placeholder="Primeiro nome:" />
            </label>

            <label>
                <div><span class="icon-user-plus">Sobrenome:</span></div>
                <input type="text" name="last_name" placeholder="Último nome:" />
            </label>

            <label>
                <div><span class="icon-envelope">Email:</span></div>
                <input type="email" name="email" placeholder="Informe seu e-mail:" />
            </label>

            <label>
             <div class="unlock-alt"><span class="icon-unlock-alt">Mensagem:</span></div>
            <textarea name="messages" placeholder="Deixe sua mensagem:" required></textarea>
            </label>

            <button class="auth_form_btn transition gradient gradient-green gradient-hover">Solicitar agora</button>
        </form>
    </div>
</article>