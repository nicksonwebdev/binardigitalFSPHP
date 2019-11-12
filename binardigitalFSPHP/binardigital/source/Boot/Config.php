<?php
/**
 * DATABASE
 */
define("CONF_DB_HOST", "localhost");
define("CONF_DB_USER", "root");
define("CONF_DB_PASS", "");
define("CONF_DB_NAME", "binardigital");

/**
 * PROJECT URLs
 */
define("CONF_URL_BASE", "https://www.binardigital.com.br");
define("CONF_URL_TEST", "https://www.localhost/binardigital");
define("CONF_URL_ADMIN", "/admin");

/**
 * SITE
 */
define("CONF_SITE_NAME", "Binar Digital");
define("CONF_SITE_TITLE", "Agência de desenvolvimento sistemas para web e Marketing digital");
define("CONF_SITE_DESC",
    "Agência especializada em desenvolvimento de sistemas para web e Marketing digital.");
define("CONF_SITE_LANG", "pt_BR");
define("CONF_SITE_DOMAIN", "binardigital.com.br");
define("CONF_SITE_ADDR_STREET", "SP - Rua Fernando Marinho Falcão");
define("CONF_SITE_ADDR_NUMBER", "310");
define("CONF_SITE_ADDR_COMPLEMENT", "Casa 3");
define("CONF_SITE_ADDR_CITY", "São Paulo");
define("CONF_SITE_ADDR_STATE", "SP");
define("CONF_SITE_ADDR_ZIPCODE", "05888-080");

/**
 * SOCIAL
 */
define("CONF_SOCIAL_TWITTER_CREATOR", "@nicksonn_lima");
define("CONF_SOCIAL_TWITTER_PUBLISHER", "@nicksonn_lima");
define("CONF_SOCIAL_FACEBOOK_APP", "522086211666175");
define("CONF_SOCIAL_FACEBOOK_PAGE", "binardigital");
define("CONF_SOCIAL_FACEBOOK_AUTHOR", "nicksonlima");
define("CONF_SOCIAL_GOOGLE_PAGE", "107305124528362639842");
define("CONF_SOCIAL_GOOGLE_AUTHOR", "103958419096641225872");
define("CONF_SOCIAL_INSTAGRAM_PAGE", "binardigital");
define("CONF_SOCIAL_YOUTUBE_PAGE", "binardigital");
define("CONF_SOCIAL_WHATSAPP_PAGE", "binardigital");

/**
 * DATES
 */
define("CONF_DATE_BR", "d/m/Y H:i:s");
define("CONF_DATE_APP", "Y-m-d H:i:s");

/**
 * PASSWORD
 */
define("CONF_PASSWD_MIN_LEN", 8);
define("CONF_PASSWD_MAX_LEN", 40);
define("CONF_PASSWD_ALGO", PASSWORD_DEFAULT);
define("CONF_PASSWD_OPTION", ["cost" => 10]);

/**
 * MESSAGE
 */
define("CONF_MESSAGE_CLASS", "message");
define("CONF_MESSAGE_INFO", "info icon-info");
define("CONF_MESSAGE_SUCCESS", "success icon-check-square-o");
define("CONF_MESSAGE_WARNING", "warning icon-warning");
define("CONF_MESSAGE_ERROR", "error icon-warning");

/**
 * VIEW
 */
define("CONF_VIEW_PATH", __DIR__ . "/../../shared/views");
define("CONF_VIEW_EXT", "php");
define("CONF_VIEW_THEME", "binardigital");

/**
 * UPLOAD
 */
define("CONF_UPLOAD_DIR", "storage");
define("CONF_UPLOAD_IMAGE_DIR", "images");
define("CONF_UPLOAD_FILE_DIR", "files");
define("CONF_UPLOAD_MEDIA_DIR", "medias");

/**
 * IMAGES
 */
define("CONF_IMAGE_CACHE", CONF_UPLOAD_DIR . "/" . CONF_UPLOAD_IMAGE_DIR . "/cache");
define("CONF_IMAGE_SIZE", 2000);
define("CONF_IMAGE_QUALITY", ["jpg" => 75, "png" => 5]);

/**
 * MAIL
 */
define("CONF_MAIL_HOST", "mail.binardigital.com.br");
define("CONF_MAIL_PORT", "465");
define("CONF_MAIL_USER", "contato@binardigital.com.br");
define("CONF_MAIL_PASS", "AGENCIAemsucesso2020");
define("CONF_MAIL_SENDER", ["name" => "Nickson Lima", "address" => "contato@binardigital.com.br"]);
define("CONF_MAIL_SUPPORT", "contato@binardigital.com.br");
define("CONF_MAIL_OPTION_LANG", "br");
define("CONF_MAIL_OPTION_HTML", true);
define("CONF_MAIL_OPTION_AUTH", true);
define("CONF_MAIL_OPTION_SECURE", "tls");
define("CONF_MAIL_OPTION_CHARSET", "utf-8");