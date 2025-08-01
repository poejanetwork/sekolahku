<?php
/* Smarty version 5.4.5, created on 2025-07-31 13:20:07
  from 'file:header.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b6d87aab7c8_51550398',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c2e3a7a5dbd86998c8305b30ce36eaf237cd927c' => 
    array (
      0 => 'header.tpl',
      1 => 1753967981,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_688b6d87aab7c8_51550398 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
?><!DOCTYPE HTML>
<html lang="en">
<head>
<?php echo $_smarty_tpl->getValue('telegram_webapp_header');?>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<meta name="description" content='<?php echo $_smarty_tpl->getValue('settings')['description'];?>
'>
<meta name="keyword" content='<?php echo $_smarty_tpl->getValue('settings')['keywords'];?>
'>
<title><?php echo $_smarty_tpl->getValue('pagename');?>
 <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
 | <?php echo $_smarty_tpl->getValue('settings')['description'];?>
</title>
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/styles/bootstrapv35.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/fonts/css/fontawesome-all.min.css">   
<link rel="apple-touch-icon" sizes="180x180" href="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/app/icons/icon-192x192.png">
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">

    <!-- header and footer bar go here-->
    <div class="header header-fixed header-auto-show header-logo-app">
        <a href="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
" class="header-title"><?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</a>
        <a href="javascript:void(0)" data-menu="menu-main" class="header-icon header-icon-1"><i class="fas fa-bars"></i></a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-dark"><i class="fas fa-sun"></i></a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-light"><i class="fas fa-moon"></i></a>
        <a href="javascript:void(0)" data-menu="menu-highlights" class="header-icon header-icon-3"><i class="fas fa-brush"></i></a>
    </div>

    <div id="footer-bar" class="footer-bar-5">
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb");?>
' class="ms-2 me-1 <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'ppdb')) {?>active-nav<?php }?>"><i data-feather="layers" data-feather-line="1" data-feather-size="21" data-feather-color="red-dark" data-feather-bg="red-fade-light"></i><span>PPDB</span></a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=category");?>
' class="<?php if ($_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'category') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'alumni') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'teachers')) {?>active-nav<?php }?>"><i data-feather="grid" data-feather-line="1" data-feather-size="21" data-feather-color="brown-dark" data-feather-bg="brown-fade-light"></i><span><?php echo $_smarty_tpl->getValue('lang')['category'];?>
</span></a>
        <a href="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
" class="<?php if ($_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'home') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'profil') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'rules') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'login') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'support') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'result')) {?>active-nav<?php }?>"><i data-feather="home" data-feather-line="1" data-feather-size="21" data-feather-color="blue-dark" data-feather-bg="blue-fade-light"></i><span class="mx-1"><?php echo $_smarty_tpl->getValue('lang')['dashboard'];?>
</span></a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news");?>
' class="ms-1 <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'news')) {?>active-nav<?php }?>"><i data-feather="radio" data-feather-line="1" data-feather-size="21" data-feather-color="green-dark" data-feather-bg="green-fade-light"></i><span><?php echo $_smarty_tpl->getValue('lang')['news'];?>
</span></a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=account");?>
' class="ms-1 me-3 <?php if ($_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'account') || $_smarty_tpl->getSmarty()->getModifierCallback('stristr')($_smarty_tpl->getValue('pagetitle'),'bukusaku')) {?>active-nav<?php }?>"><i data-feather="user" data-feather-line="1" data-feather-size="21" data-feather-color="mint-light" data-feather-bg="mint-fade-light"></i><span><?php echo $_smarty_tpl->getValue('lang')['account'];?>
</span></a>
    </div>
<!-- page content-->
<div class="page-content">
    <div class="page-title page-title-large">
        <h2 data-username="<?php if ($_smarty_tpl->getValue('user')) {
echo $_smarty_tpl->getValue('user')['fullname'];
} else {
echo $_smarty_tpl->getValue('settings')['sitename'];
}?>" class="greeting-text"></h2>
        <a href="javascript:void(0)" data-menu="menu-main" class="bg-fade-gray1-dark shadow-xl preload-img" data-src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/avatars/5s.png"></a>
    </div>
    <div class="card header-card shape-rounded" data-card-height="210">
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
        <div class="card-bg preload-img" data-src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/pictures/20s.jpg"></div>
    </div>
<?php }
}
