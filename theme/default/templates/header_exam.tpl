<!DOCTYPE HTML>
<html lang="en">
<head>
{$telegram_webapp_header}
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<meta name="description" content='{$settings.description}'>
<meta name="keyword" content='{$settings.keywords}'>
<meta name="copyright" href='{$sc_copyright_wa}'>
<meta name="script" href='{$sc_copyright}'>
<title>{$pagename} {$settings.sitename} | {$settings.description}</title>
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/styles/bootstrapv35.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/fonts/css/fontawesome-all.min.css">  
<link rel="icon" type="image/png" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon-96x96.png" sizes="96x96" />
<link rel="icon" type="image/svg+xml" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.svg" />
<link rel="shortcut icon" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.ico" />
<link rel="apple-touch-icon" sizes="180x180" href="{$settings.siteurl}/{$theme}/assets/images/splash/apple-touch-icon.png" />
<link rel="manifest" href="{$settings.siteurl}/{$theme}/assets/images/splash/site.webmanifest" />
{literal}
<style>
    .footer-card{bottom:0px;}
    .page-content{padding-bottom: 40px;}
</style>
{/literal}
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">
<div id="notif" data-dismiss="notif" data-bs-delay="5000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notif" class="fa fa-times-circle"></i>
	</span>
<h1 id="notif-result" class="font-15 color-white">Error/Sukses</h1>
<p id="notif-message" class="pb-1"></p>
<div class="progress active"></div>
</div>

    <!-- header and footer bar go here-->
    <div class="header header-fixed header-auto-show header-logo-app">
        <a href="javascript:void(0)" class="header-title">{$settings.sitename}</a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-dark"><i class="fas fa-sun"></i></a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-light"><i class="fas fa-moon"></i></a>
        <a href="javascript:void(0)" data-menu="menu-highlights" class="header-icon header-icon-3"><i class="fas fa-brush"></i></a>
    </div>

<!-- page content-->
<div id="page-loader" class="loader-overlay d-none">
  <div class="spinner"></div>
</div>
<div class="page-content">
    <div class="page-title page-title-small">
        <h2>{$settings.sitename}</h2>
        <a href="javascript:void(0)" class="bg-fade-gray1-dark shadow-xl preload-img" data-src="{$user.avatar|default:"{$settings.siteurl}/{$theme}/assets/images/avatars/default_avatar.png"}"></a>
    </div>
    <div class="card header-card shape-rounded" data-card-height="210">
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
        <div class="card-bg preload-img" data-src="{$settings.siteurl}/{$theme}/assets/images/icons/logo.png"></div>
    </div>
