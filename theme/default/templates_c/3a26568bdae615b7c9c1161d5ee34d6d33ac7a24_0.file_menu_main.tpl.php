<?php
/* Smarty version 5.4.5, created on 2025-07-27 03:06:32
  from 'file:menu_main.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688597b83c39c1_76163829',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3a26568bdae615b7c9c1161d5ee34d6d33ac7a24' => 
    array (
      0 => 'menu_main.tpl',
      1 => 1753439627,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_688597b83c39c1_76163829 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
?>
    <?php if ($_smarty_tpl->getValue('user')) {?>
    <div class="menu-logo text-center">
        <?php if ($_smarty_tpl->getValue('user')['avatar'] == '') {?>
            <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=edit_account&avatar");?>
'><img src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/avatars/5s.png" width="80" class="rounded-circle bg-highlight"></a>
        <?php } else { ?>
            <img src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/uploads/avatar/<?php echo $_smarty_tpl->getValue('user')['avatar'];?>
" width="80" class="rounded-circle bg-highlight">
        <?php }?>
        <h6 class="pt-3 font-600 text-uppercase"><?php echo $_smarty_tpl->getValue('user')['fullname'];?>
</h6>
        <p class="font-11 mt-n2 mb-2"><?php if ($_smarty_tpl->getValue('user')['login_as'] == "user") {?>Siswa<?php } else { ?>Pengajar<?php }?><br/><?php echo $_smarty_tpl->getValue('user')['nisp'];?>
</p>
    </div>

    <div class="menu-items">
        <h5 class="text-uppercase opacity-20 font-12 pl-3">Menu</h5>
        <a id="nav-welcome" href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=account");?>
'>
            <i data-feather="home" data-feather-line="1" data-feather-size="16" data-feather-color="teal-dark" data-feather-bg="teal-fade-dark"></i>
            <span>Dashboard</span>
            <i class="fa fa-circle"></i>
        </a>
        <a id="nav-welcome" href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=profil");?>
'>
            <i class="fa fa-school color-yellow-dark"></i>
            <span>Profil</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=support");?>
'>
            <i data-feather="mail" data-feather-line="1" data-feather-size="16" data-feather-color="green-dark" data-feather-bg="green-fade-dark"></i>
            <span>Kontak Kami</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href="javascript:void(0)" data-menu="menu-language">
            <i class="fa fa-globe color-blue-dark"></i>
            <span><?php echo $_smarty_tpl->getValue('lang')['language'];?>
</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=logout");?>
'>
            <i class="fa fa-sign-out-alt color-red-dark"></i>
            <span>Logout</span>
            <i class="fa fa-circle"></i>
        </a>
    </div>
    <?php } else { ?>
    <div class="menu-logo text-center">
        <a href="#"><img class="rounded-circle bg-highlight" width="80" src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/avatars/5s.png"></a>
        <h1 class="pt-3 font-800 font-28 text-uppercase">Tamu</h1>
        <p class="font-11 mt-n2"><?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</p>
    </div>
    
    <div class="menu-items">
        <h5 class="text-uppercase opacity-20 font-12 pl-3">Menu</h5>
        <a id="nav-welcome" href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=login");?>
'>
            <i data-feather="log-in" data-feather-line="1" data-feather-size="16" data-feather-color="teal-dark" data-feather-bg="teal-fade-dark"></i>
            <span>Masuk</span>
            <i class="fa fa-circle"></i>
        </a>
        <a id="nav-starters" href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=register");?>
'>
            <i data-feather="user-plus" data-feather-line="1" data-feather-size="18" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-dark"></i>
            <span>Daftar Baru</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=support");?>
' data-submenu="sub-contact">
            <i data-feather="mail" data-feather-line="1" data-feather-size="16" data-feather-color="green-dark" data-feather-bg="green-fade-dark"></i>
            <span>Kontak Kami</span>
            <i class="fa fa-circle"></i>
        </a>
        <a href="javascript:void(0)" data-menu="menu-language">
            <i class="fa fa-globe color-blue-dark"></i>
            <span><?php echo $_smarty_tpl->getValue('lang')['language'];?>
</span>
            <i class="fa fa-circle"></i>
        </a>
    </div>
    <?php }?>
    
    <div class="text-center pt-2">
        <a href="mailto:<?php echo $_smarty_tpl->getValue('settings')['system_email'];?>
" class="icon icon-xs mr-1 rounded-s bg-mail" data-toggle="tooltip" data-placement="top" title="" data-original-title="Email"><i class="fa fa-envelope font-16"></i></a>
        <a href="tel:<?php echo $_smarty_tpl->getValue('settings')['phone'];?>
" class="icon icon-xs mr-1 rounded-s bg-phone" data-toggle="tooltip" data-placement="top" title="" data-original-title="Phone"><i class="fa fa-phone font-16"></i></a>
        <a href="https://t.me/" class="icon icon-xs mr-1 rounded-s bg-twitter" data-toggle="tooltip" data-placement="top" title="" data-original-title="Telegram"><i class="fab fa-telegram font-16"></i></a>
        <a href="https://wa.me/" class="icon icon-xs mr-1 rounded-s bg-whatsapp" data-toggle="tooltip" data-placement="top" title="" data-original-title="Whatsapp"><i class="fab fa-whatsapp font-16"></i></a>
        <p class="mb-0 pt-3 font-10 opacity-30">Copyright <span class="copyright-year"></span> <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
.</p>
    </div><?php }
}
