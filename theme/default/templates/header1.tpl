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
{if $pagetitle|stristr:'news' && $newsid}
<link rel="canonical" href='{$settings.siteurl}/news/{$newsid.id}/{$newsid.slug}' />
<meta property="og:locale" content="id_ID" />
<meta property="og:type" content="article" />
<meta property="article:publisher" content="{$settings.social_instagram}" />
<meta property="article:published_time" content="{$newsid.created_at}" />
<meta property="og:image" content="{$newsid.thumbnail}">
<meta property="og:image:width" content="640" />
<meta property="og:image:height" content="480" />
<meta property="og:image:type" content="image/jpeg" />
<meta property="og:title" content="{$newsid.title}" />
<meta property="og:description" content="{$newsid.title}">
<meta property="og:url" content='{$settings.siteurl}/news/{$newsid.id}/{$newsid.slug}' />
<meta property="og:site_name" content="{$settings.sitename}" />
<meta name="twitter:card" value="summary">
<meta name="author" content="Admin" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:creator" content="{$settings.social_twitter}" />
<meta name="twitter:site" content="{$settings.social_twitter}" />
<meta name="twitter:label1" content="Ditulis oleh" />
<meta name="twitter:data1" content="Admin" />
<meta name="twitter:label2" content="Estimasi waktu membaca" />
<meta name="twitter:data2" content="1 menit" />
{/if}
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/styles/bootstrapv35.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/fonts/css/fontawesome-all.min.css">  
<link rel="icon" type="image/png" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon-96x96.png" sizes="96x96" />
<link rel="icon" type="image/svg+xml" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.svg" />
<link rel="shortcut icon" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.ico" />
<link rel="apple-touch-icon" sizes="180x180" href="{$settings.siteurl}/{$theme}/assets/images/splash/apple-touch-icon.png" />
<link rel="manifest" href="{$settings.siteurl}/{$theme}/assets/images/splash/site.webmanifest" />
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">

    <!-- header and footer bar go here-->
    <div class="header header-fixed header-auto-show header-logo-app">
        <a href="{$settings.siteurl}" class="header-title">{$settings.sitename}</a>
        <a href="javascript:void(0)" data-back-button class="header-icon header-icon-1"><i class="fas fa-arrow-left"></i></a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-dark"><i class="fas fa-sun"></i></a>
        <a href="javascript:void(0)" data-toggle-theme class="header-icon header-icon-2 show-on-theme-light"><i class="fas fa-moon"></i></a>
        <a href="javascript:void(0)" data-menu="menu-highlights" class="header-icon header-icon-3"><i class="fas fa-brush"></i></a>
        <a href="javascript:void(0)" data-menu="menu-main" class="header-icon header-icon-4"><i class="fas fa-bars"></i></a>
    </div>

    <div id="footer-bar" class="footer-bar-5">
        <a href='{"?p=ppdb"|surl}' class="ms-2 me-1 {if $pagetitle|stristr:'ppdb'}active-nav{/if}"><i data-feather="layers" data-feather-line="1" data-feather-size="21" data-feather-color="red-dark" data-feather-bg="red-fade-light"></i><span>PPDB</span></a>
        <a href='{"?p=category"|surl}' class="{if $pagetitle|stristr:'category' || $pagetitle|stristr:'alumni' || $pagetitle|stristr:'teachers'}active-nav{/if}"><i data-feather="grid" data-feather-line="1" data-feather-size="21" data-feather-color="brown-dark" data-feather-bg="brown-fade-light"></i><span>{$lang.category}</span></a>
        <a href="{$settings.siteurl}" class="{if $pagetitle|stristr:'home' || $pagetitle|stristr:'profil' || $pagetitle|stristr:'rules' || $pagetitle|stristr:'login' || $pagetitle|stristr:'support' || $pagetitle|stristr:'result'}active-nav{/if}"><i data-feather="home" data-feather-line="1" data-feather-size="21" data-feather-color="blue-dark" data-feather-bg="blue-fade-light"></i><span class="mx-1">{$lang.dashboard}</span></a>
        <a href='{"?p=news"|surl}' class="ms-1 {if $pagetitle|stristr:'news'}active-nav{/if}"><i data-feather="radio" data-feather-line="1" data-feather-size="21" data-feather-color="green-dark" data-feather-bg="green-fade-light"></i><span>{$lang.news}</span></a>
        <a href='{"?p=account"|surl}' class="ms-1 me-3 {if $pagetitle|stristr:'account' || $pagetitle|stristr:'view_account' || $pagetitle|stristr:'bukusaku' || $pagetitle|stristr:'classes' || $pagetitle|stristr:'schedule'}active-nav{/if}"><i data-feather="user" data-feather-line="1" data-feather-size="21" data-feather-color="mint-light" data-feather-bg="mint-fade-light"></i><span>{$lang.account}</span></a>
    </div>
<!-- page content-->
<div id="page-loader" class="loader-overlay d-none">
  <div class="spinner"></div>
</div>
<div class="page-content">
    <div class="page-title page-title-small">
        <h2><a href="javascript:void(0)" data-back-button><i class="fa fa-arrow-left"></i></a> {$pagename}</h2>
        <a href="javascript:void(0)" data-menu="menu-main" class="bg-fade-gray1-dark shadow-xl preload-img" data-src="{$user.avatar|default:"{$settings.siteurl}/{$theme}/assets/images/avatars/default_avatar.png"}"></a>
    </div>
    <div class="card header-card shape-rounded" data-card-height="210">
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
        <div class="card-bg preload-img" data-src="{$settings.siteurl}/{$theme}/assets/images/icons/logo.png"></div>
    </div>
