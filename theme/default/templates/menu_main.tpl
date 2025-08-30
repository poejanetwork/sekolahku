
    {if $user}
    <div class="menu-logo text-center pt-2">
        <img src='{$user.avatar|default:"{$settings.siteurl}/{$theme}/assets/images/avatars/default_avatar.png"}' width="50" class="rounded-circle bg-highlight">
        <h6 class="pt-2 mb-0 font-600 text-uppercase">{$user.fullname}</h6>
        <p class="font-11 mt-n2 mb-2">{if $user.login_as=="student"}Siswa{else}Pengajar{/if}<br/>{$user.nisp}</p>
    </div>

    <div class="menu-items">
        <h5 class="text-uppercase opacity-20 font-12 pl-3">{$lang.menu}</h5>
        <a id="nav-welcome" href='{"?p=account"|surl}'>
            <i data-feather="user" data-feather-line="1" data-feather-size="16" data-feather-color="mint-light" data-feather-bg="mint-fade-light"></i>
            <span>{$lang.account}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a id="nav-welcome" href='{"?p=profil"|surl}'>
            <i class="fa fa-school color-yellow-dark"></i>
            <span>{$lang.profile}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='{"?p=support"|surl}'>
            <i data-feather="mail" data-feather-line="1" data-feather-size="16" data-feather-color="green-dark" data-feather-bg="green-fade-dark"></i>
            <span>{$lang.contact_us}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href="javascript:void(0)" data-menu="menu-language">
            <i class="fa fa-globe color-blue-dark"></i>
            <span>{$lang.language}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='{"?p=logout"|surl}'>
            <i class="fa fa-sign-out-alt color-red-dark"></i>
            <span>{$lang.logout}</span>
            <i class="fa fa-circle"></i>
        </a>
    </div>
    {else}
    <div class="menu-logo text-center pt-2">
        <a href="#"><img class="rounded-circle bg-highlight" width="50" src="{$settings.siteurl}/{$theme}/assets/images/avatars/default_avatar.png"></a>
        <h1 class="pt-2 mb-0 font-800 font-28 text-uppercase">{$lang.guest}</h1>
        <p class="font-11 mt-n2 mb-2">{$settings.sitename}</p>
    </div>
    
    <div class="menu-items">
        <h5 class="text-uppercase opacity-20 font-12 pl-3">{$lang.menu}</h5>
        <a id="nav-welcome" href='{"?p=login"|surl}'>
            <i data-feather="log-in" data-feather-line="1" data-feather-size="16" data-feather-color="teal-dark" data-feather-bg="teal-fade-dark"></i>
            <span>{$lang.login}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='{"?p=support"|surl}' data-submenu="sub-contact">
            <i data-feather="mail" data-feather-line="1" data-feather-size="16" data-feather-color="green-dark" data-feather-bg="green-fade-dark"></i>
            <span>{$lang.contact_us}</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href="javascript:void(0)" data-menu="menu-language">
            <i class="fa fa-globe color-blue-dark"></i>
            <span>{$lang.language}</span>
            <i class="fa fa-circle"></i>
        </a>
    </div>
    {/if}
    
    <div class="text-center pt-2">
        <a href="mailto:{$settings.system_email}" class="icon icon-xs mr-2 rounded-s bg-mail" data-toggle="tooltip" data-placement="top" title="" data-original-title="Email"><i class="fa fa-envelope font-16"></i></a>
        <a href="tel:{$settings.phone}" class="icon icon-xs mr-2 rounded-s bg-phone" data-toggle="tooltip" data-placement="top" title="" data-original-title="Phone"><i class="fa fa-phone font-16"></i></a>
        <a href="https://t.me/" class="icon icon-xs mr-2 rounded-s bg-twitter" data-toggle="tooltip" data-placement="top" title="" data-original-title="Telegram"><i class="fab fa-telegram font-16"></i></a>
        <a href="https://wa.me/" class="icon icon-xs mr-2 rounded-s bg-whatsapp" data-toggle="tooltip" data-placement="top" title="" data-original-title="Whatsapp"><i class="fab fa-whatsapp font-16"></i></a>
        <p class="mb-0 pt-3 font-10 opacity-30">Copyright <span class="copyright-year"></span> {$settings.sitename}.</p>
    </div>