-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Out-2019 às 02:48
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `binardigital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `complement` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id`, `user_id`, `street`, `number`, `complement`, `created_at`, `updated_at`) VALUES
(1, 1, 'rua fernando marinho falcão, 310', '310', 'casa 3', '2019-10-06 19:40:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'post' COMMENT 'post, page, etc',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `title`, `uri`, `description`, `cover`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Marketing digital', 'Marketing digital', 'Dicas e sacadas sobre como alavancar o seu negócio através da internet. Agende uma reunião sem compromisso.', NULL, 'post', '2019-10-06 18:24:12', '2019-10-04 02:59:00'),
(2, 'Marketing de conteúdo', 'Marketing de conteúdo', 'Conteúdo é a alma da internet. Agende uma reunião sem compromisso', NULL, 'post', '2019-10-06 19:32:57', '2019-10-06 19:33:25'),
(3, 'Inbound marketing', 'Inbound marketing', 'Atrair, converter, relacionar e reter(vende).', NULL, 'post', '2019-10-06 19:33:05', '2019-10-12 13:27:27'),
(4, 'Transformação digital', 'Transformação digital', 'Pensa na transformação digital como benefício para o consumidor. ', NULL, 'post', '2019-10-20 02:23:16', '2019-10-20 02:21:18'),
(5, 'E-mail marketing', 'E-mail marketing', 'E-mail marketing é uma das ferramentas mais poderosas do marketing, se souber usá-lo.', NULL, 'post', '2019-10-20 02:26:30', '2019-10-20 02:27:15'),
(6, 'Desenvolvimento de sistemas web', 'Desenvolvimento de sistemas web', 'Saiba como construir um sistema que gera resultado.', NULL, 'post', '2019-10-20 02:32:21', '2019-10-20 02:32:33'),
(7, 'Mídias de performance', 'Mídias de performance', 'Entende como a mídia de performance poderá ter impacto no negócio', NULL, 'post', '2019-10-20 02:37:00', '2019-10-20 02:41:16'),
(8, 'SEO (Sirch Engine Optimization)', 'SEO (Sirch Engine Optimization)', 'Veja como ficar em primeiro nos motores de busca, como: Goolge e entre outros.', NULL, 'post', '2019-10-20 02:53:24', '2019-10-20 02:56:20'),
(9, 'Mídias e redes sociais', 'Mídias e redes sociais', 'Veja como é possível vender na internet com as redes sociais.', NULL, 'post', '2019-10-20 02:59:27', '2019-10-12 02:46:41'),
(10, 'Empreendedorismo digital', 'Empreendedorismo digital', 'Como empreender digitalmente?', NULL, 'post', '2019-10-20 02:44:23', '2019-10-20 02:26:49');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_channels`
--

CREATE TABLE `faq_channels` (
  `id` int(11) UNSIGNED NOT NULL,
  `channel` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_channels`
--

INSERT INTO `faq_channels` (`id`, `channel`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sobre Binar Digital', 'Saiba tudo sobre Binar Digital', '2018-10-21 11:24:51', '2019-09-13 01:36:32');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `channel_id` int(11) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `response` text NOT NULL,
  `order_by` int(11) UNSIGNED DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `channel_id`, `question`, `response`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'O que é marketing digital?', '<p>Marketing digital, são conjunto de estratégias que uma empresa utiliza por meio de mídias digitais afim de alavancar o negócios.</p><p>As estratégias de marketing digital são focadas no atendimento ao cliente, estabelecendo e fortalecendo um bom relacionamento com a marca,criando os advogados da marca, contribuindo diretamente para os objetivos comerciais, marketing e venda da empresa.</p>', 1, '2018-10-21 11:28:11', '2019-10-05 22:15:23'),
(2, 1, 'O que é transformação digital?', '<p>Transformação digital, é o processo no qual as empresas utilizam a tecnologia afim de dar a resposta a velocidade, melhorar o desempenho, o atendimento ao consumidor, aumentar o alcance e melhorar os resultados da empresa.</p>', 2, '2018-10-21 11:30:04', '2019-10-05 22:35:33'),
(4, 1, 'É possível vender nas mídias e redes sociais?', '<p>Nos últimos anos as mídias e redes sociais revolucionaram a maneira como nós se comunicarmos e relacionamos. As mídias e redes sociais são ambientes onde as pessoas criam e interajam entre si.</p><p>Através das mídias e redes sociais é possível escrever mensagens, postar fotos, compartilhar notícias e vender produtos e serviços. Segundo a pesquisa, no Brasil, 96% dos usuários de internet estão em alguma mídia e rede social.</p><p>Com isso, qualquer negócio deve manter sua presença assídua na mídia e rede social em que o seu público se conecta.</p>', 3, '2019-10-22 10:04:00', '2019-10-05 23:24:04'),
(5, 1, 'Conceito marketing de conteúdo.', '<p>Marketing de conteúdo, é uma maneira de interagir com o seu público por meio da criação de conteúdo relevante e valioso que lhes atraem.</p>', 4, '2018-10-22 10:07:01', '2019-10-05 23:50:48'),
(6, 1, 'O que é Inbound marketing?', '<p>Inbound Marketing, também conhecido como marketing de atração, é a estratégia que busque captar interesse dos consumidores no momento em que eles não estão preparados. O Inbound marketing não empurra a venda, o conteúdo é desenvolvido com base nos interesse dos consumidores.</p><p>O Inbound marketing se baseia nos 4 pilares: <strong>atrair, converter, vender e encantar.</strong></p>', 5, '2018-10-22 10:10:32', '2019-10-06 00:25:54'),
(8, 1, 'O que é SEO (Search Engine Optimization)?', '<p>SEO, são conjunto de técnicas utilizadas para otimizar uma página nos buscadores (Google, Bing, Yahoo etc..), através das palavras-chaves específicas. A otimização acontece de uma forma orgânica nos buscadores.</p>', 6, '2019-10-22 10:11:58', '2019-10-06 00:24:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mail_queue`
--

CREATE TABLE `mail_queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `from_email` varchar(255) NOT NULL DEFAULT '',
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `recipient_email` varchar(255) NOT NULL DEFAULT '',
  `recipient_name` varchar(255) NOT NULL DEFAULT '',
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `author` int(11) UNSIGNED DEFAULT NULL,
  `category` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uri` varchar(255) NOT NULL,
  `subtitle` text NOT NULL,
  `content` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'draft' COMMENT 'post, draft, trash ',
  `post_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `author`, `category`, `title`, `uri`, `subtitle`, `content`, `cover`, `video`, `views`, `status`, `post_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 5, 'Saiba como utilizar o Email marketing ao seu benefício', 'Email-marketing-saiba-como-utilizar-lo', 'Se você tem um CMS próprio onde disponibiliza a instalação para seus clientes, você tem que assistir essa aula onde te mostro como criar um form wizard de instalação', '<p>Salve salve moquerido! Tudo certo? Bora ver como desenvolver um installer para nosso CMS?</p>\r\n<p>Esse recurso já existe a muito tempo no wordpress, que é um dos CMS mais utilizado no mundo... E provavelmente, durante a sua carreira de desenvolvedor você já deve ter instalado ao menos uma vez o WP em um host.</p>\r\n<p>O que vamos criar nessa aula do Play é basicamente ele formulário inicial de conexão com o banco de dados e criação do usuário administrador.</p>\r\n<p>É claro que para a aula ficar mais enxuta, eu fiz somente esses dois passos, mas você pode colocar quantas informações forem necessárias. Você pode seguir esse step by step solicitando diversas informações como:</p>\r\n<ul>\r\n<li>Timezona que a aplicação deve responder</li>\r\n<li>Servidor de e-mail</li>\r\n<li>Geração de logs</li>\r\n<li>Parametrização de ferramentas externas (autenticação do active campaing, e-mail do pagseguro...)</li>\r\n<li>Google Analytics</li>\r\n<li>Pixel do Facebook</li>\r\n</ul>\r\n<p>As possibilidades são inumeras :)</p>\r\n<h3>Aplicação Install</h3>\r\n<p>Basicamente a aplicação consiste em um diretório com o nome install dentro da aplicação. É claro que você pode dar qualquer outro nome para sistema, o importante é não deixar isso público!</p>\r\n<p>No decorrer das aulas, você vai ver que dentro dele temos um arquivo chamado dump.sql, e ele tem toda a estrutura do banco de dados! Não é legal alguém por a mão nesse arquivo e entender a sua modelagem.</p>\r\n<p>Sem muitas firulas, basicamente temos um css para estilizar os nossos componentes e dar uma inteface mais amigável para quem está fazendo a instalação.</p>\r\n<p>Há também um javascript responsável por monitorar o nosso html e capturar o evento de submit dos forms e disparar a ação para o controlador. É claro que essa ação não seria necessária! Mas dessa forma, em nenhum momento temos o reload da página! Fica bem legal a interação, tratamento de erros e a dinamica das divs.</p>\r\n<p>O controller por sua vez, está monitorando duas ações! Uma de conexão com o banco de dados e outra para a criação do usuário na base... Se você for implementar mais recursos, obviamente que você vai adicionar novos case\'s :)</p>\r\n<p>O index tem a marcação do HTML como de praxe! Sem segredo.</p>\r\n<h3>Material de Apoio</h3>\r\n<p>Como sempre o link para o nosso repositório vai estar aqui abaixo.</p>\r\n<p>No diretório _initial, tem o que é preciso para você seguir durante as aulas comigo! Basicamente temos esse material inicial só por conta da marcação do html e o css.</p>\r\n<p><a href=\"https://github.com/UpInside/play_installer\" target=\"_blank\">Para acessar nosso repo, é só clicar aqui e te levo pra lá agora :)</a></p>\r\n<h3>Criação da estrutura do banco de dados</h3>\r\n<p>Informação importante aqui... O banco de dados já deve estar previamente criado! Isso quer dizer que seja no seu localhost ou no servidor, você deve acessar o seu aplicativo de SGDB ou o phpMyAdmin e fazer a criação do banco. Isso é necessário para que as permissões sejam concedidas.</p>\r\n<p>Até poderiamos criar o banco de dados via código, mas o ideal é fazer isso a partir do cpanel, ou de dentro do próprio banco para evitar conflitos de permissões.</p>\r\n<p>No nosso caso temos dois bancos de dados:</p>\r\n<h4>play_installer_base</h4>\r\n<p>Vai servir como origem da nossa estrutura! Então é aqui que temos que ter a modelagem da nossa aplicação, todas as tabelas, campos, chaves extrangeiras, views, triggers, functions... Tudo.</p>\r\n<h4>play_installer</h4>\r\n<p>É o banco que estamos simulando a instalação do nosso sistema. Por sua vez, deverá ter exatamente a mesma estrutura do _base!</p>\r\n<h3>AJAX</h3>\r\n<p>Você pode imaginar que o tempo de execução desses scripts pode demorar um tempo que não seja hábil para ter o retorno. Mas utilizamos algumas técnicas bem legais para fazer todas as requisições com o file_get_contents e file_put_contents.</p>\r\n<p>Quando chamamos o dump.sql com o file_get_contents, temos todo o conteúdo que deve ser executado no banco de dados. Portanto você manda todos os comandos de uma vez só e não precisa ficar fazendo diversas requisições.</p>\r\n<p>Isso sem contar que estamos usando o try/catch, portanto, qualquer excessão que seja lançada a gente consegue tratar :)</p>\r\n<p>O file_put_contents usamos para criar o arquivo de conexão com o banco.</p>\r\n<p>Como toda essa execução é feita bem rápida, não precisamos nos preocupar com o tempo. O nosso ajax dá conta!</p>\r\n<h3>Feedback</h3>\r\n<p>Se você curtiu esse conteúdo e vai desenvolver o seu instalador, comenta aqui abaixo para eu saber que você está usando esse recurso no seu CMS.</p>', 'images/2018/10/email-marketing-saiba-como-utilizar-lo-1524575950.jpg', NULL, 12, 'post', '2019-09-12 01:00:00', '2019-09-12 01:00:00', '2019-10-12 14:30:04', NULL),
(3, 1, 2, 'O que é marketing de conteúdo e qual é a sua importância?', 'o-que-e-marketing-de-conteudo-e-qual-e-a-sua-importancia', 'Quando pensar em falar do seu negócio, pense em conteúdo. Quando penar em conteúdo, pensa em produções e buscas multimídias.', '', 'images/2018/10/o-que-e-marketing-de-conteudo-e-qual-e-a-sua-importancia.jpg', NULL, 5, 'post', '2019-10-12 16:11:00', '2019-10-12 10:24:00', '2019-10-27 17:03:44', NULL),
(4, 1, 8, 'Saiba tudo sobre a importância do SEO nos mecanismos de busca.', 'seo', 'Entenda como as otimizações funcionam, e quais são as técnicas utilizadas para ficar em primeiro nas buscas orgânicas.', '', 'images/2018/10/seo.jpg', NULL, 17, 'post', '2019-10-12 12:59:00', '2019-10-12 13:41:58', '2019-10-28 01:47:19', NULL),
(5, 1, 9, 'Com as mídias e redes sociais funcionam', 'midias-e-redes-sociais', 'Ficar fora das mídias e redes sociais, significa abdicar de um espaço importante e deixar a comunicação correndo solta.', '', 'images/2018/10/midias-e-redes-sociais.jpg', NULL, 9, 'post', '2019-10-12 18:12:00', '2019-10-12 13:41:58', '2019-10-28 01:47:09', NULL),
(6, 1, 7, 'Mídia de performance', 'midia-de-performance', 'Mídia de performance é um tipo de anúncio pago e depende o de performance que pretende veicular.', '', 'images/2018/10/midia-de-performance.jpg', NULL, 13, 'post', '2018-11-17 12:19:00', '2018-11-16 16:55:15', '2019-10-13 17:12:32', NULL),
(7, 1, 6, 'Desenvolvimento website ', 'desenvolviemento-websites', 'O seu site é o seu cartão de visita, precisa ser responsivo (adéqua a todos dispositivos existente no mercado), layout bonito e personalizado e carregamento rápido.', '', 'images/2018/10/desenvolviemento-websites.jpg', NULL, 3, 'post', '2018-12-22 09:11:00', '2018-11-24 13:14:00', '2019-10-13 15:35:06', NULL),
(8, 1, 3, 'Saiba como o inbound marketing pode mudar marketing da sua empresa', 'inbound-marketing', 'O Inbound marketing se baseia na ideia de criação de conteúdo atrativo, pensando no momento do consumidor sem empurrar a venda, mas sim, preocupar em resolver um problema.', '', 'images/2018/10/inbound-marketing.jpg', NULL, 5, 'post', '2018-12-22 12:12:00', '2018-12-22 14:19:00', '2019-10-27 17:03:29', NULL),
(9, 1, 1, 'Entenda como as estratégias de marketing digital podem ser útil para o seu negócio.', 'as-estrategias-de-marketing-digital', 'Saiba como utilizar as estratégias de marketing digital para aumentar suas vendas.', '', 'images/2018/10/como-aplicar-as-estrategias-de-marketing-digital.jpg', NULL, 15, 'post', '2019-10-12 16:23:00', '2019-10-12 14:31:00', '2019-10-27 17:02:54', NULL),
(13, 1, 4, 'Os benefícios da transformação digital para as micros e pequenas empresas', 'os-beneficios-da-transformacao-digital-para-as-micros-e-pequenas-empresas', 'Com esse componente você pode colocar a descrição, foto, preço, parcelamento, categoria ou qualquer outra informação que seja relevante na listagem de itens.', '', 'images/2018/10/os-beneficios-da-transformacao-digital-para-as-micros-e-pequenas-empresas.jpg', NULL, 10, 'post', '2018-12-18 15:21:00', '2018-11-16 12:41:58', '2019-10-28 01:46:25', NULL),
(32, 1, 7, 'Trackeamento de Link com Google Analytics', 'trackeamento-de-link-com-google-analytics', 'Aumente a efetividade de suas campanhas de marketing e automações de e-mail monitorando todos os links que são enviados para sua audiência.', '', 'images/2018/10/trackeamento-de-link-com-google-analytics-1523889078.jpg', NULL, 4, 'post', '2018-04-02 12:49:00', '2018-10-23 12:41:58', '2019-10-28 01:46:41', NULL),
(33, 1, NULL, '', '', '', '', NULL, NULL, 0, 'draft', '2019-10-12 04:15:47', '2019-10-12 04:15:47', '2019-10-12 04:15:47', NULL),
(34, 1, 8, 'Saiba tudo sobre a importância do SEO nos mecanismos de busca.', 'seo', 'Entenda como as otimizações funcionam, e quais são as técnicas utilizadas para ficar em primeiro nas buscas orgânicas.', '', 'images/2018/10/seo.jpg', NULL, 16, 'post', '2019-10-12 12:59:00', '2019-10-12 13:41:58', '2019-10-28 01:42:47', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_access`
--

CREATE TABLE `report_access` (
  `id` int(11) UNSIGNED NOT NULL,
  `users` int(11) NOT NULL DEFAULT 1,
  `views` int(11) NOT NULL DEFAULT 1,
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_access`
--

INSERT INTO `report_access` (`id`, `users`, `views`, `pages`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 10, '2018-11-12 15:33:40', '2018-11-13 15:36:00'),
(2, 2, 2, 175, '2018-11-13 15:36:02', '2018-11-13 18:59:52'),
(3, 1, 1, 50, '2018-11-14 11:53:40', '2018-11-14 12:22:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `report_online`
--

CREATE TABLE `report_online` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `agent` varchar(255) NOT NULL DEFAULT '',
  `pages` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `report_online`
--

INSERT INTO `report_online` (`id`, `user`, `ip`, `url`, `agent`, `pages`, `created_at`, `updated_at`) VALUES
(2, 51, '::1', '/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 208, '2018-11-13 16:30:01', '2018-11-14 12:22:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT 'registered' COMMENT 'registered, confirmed',
  `textarea` text NOT NULL DEFAULT '',
  `forget` varchar(255) DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `status`, `textarea`, `forget`, `document`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Nickson', 'Lima', 'nicksonwedev@binardigital.com.br', 'confirmed', '$2y$10$7aQNdKPaeaX0wwxShqfDN.Jwc4SzPPQGOk7fZdLgV/WmGvVx6oFwm', NULL, NULL, 'images/2018/10/nicksonwebdev.jpg', '2019-10-06 19:39:07', '2019-10-06 18:11:45');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addr_user` (`user_id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- Índices para tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category`),
  ADD KEY `user_id` (`author`);
ALTER TABLE `posts` ADD FULLTEXT KEY `title` (`title`,`subtitle`);

--
-- Índices para tabela `report_access`
--
ALTER TABLE `report_access`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `report_online`
--
ALTER TABLE `report_online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `faq_channels`
--
ALTER TABLE `faq_channels`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `mail_queue`
--
ALTER TABLE `mail_queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `report_access`
--
ALTER TABLE `report_access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `report_online`
--
ALTER TABLE `report_online`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD CONSTRAINT `channel_id` FOREIGN KEY (`channel_id`) REFERENCES `faq_channels` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`author`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
