<?php
/* Smarty version 5.4.5, created on 2025-07-27 03:06:32
  from 'file:footer.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688597b811ed98_33528190',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b789b01615ebf0caeb5f73aa462ef2baf1458bc9' => 
    array (
      0 => 'footer.tpl',
      1 => 1753441601,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:menu_main.tpl' => 1,
  ),
))) {
function content_688597b811ed98_33528190 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
?>    <div class="footer"><div class="footer card card-style mx-0 mb-0">
        <a href="#" class="footer-title pt-4"><?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</a>
        <p class="text-center font-12 mt-n1 mb-3 opacity-70">
            Pertama & Tetap yang Terbaik
        </p>
        <div class="text-center mb-3">
            <a href="https://facebook.com/" class="icon icon-xs rounded-sm shadow-l me-1 bg-facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="https://x.com" class="icon icon-xs rounded-sm shadow-l me-1 bg-twitter" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="tel:" class="icon icon-xs rounded-sm shadow-l me-1 bg-phone" target="_blank"><i class="fa fa-phone"></i></a>
            <a href="javascript:void(0)" class="back-to-top icon icon-xs rounded-sm shadow-l bg-red-dark color-white"><i class="fa fa-arrow-up"></i></a>
        </div>
        <p class="footer-copyright pb-3 mb-1">Copyright © <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
 <span id="copyright-year">2025</span>. All Rights Reserved.</p>
    </div>
    <div class="footer-card card shape-rounded bg-20" style="height:230px">
        <div class="card-overlay bg-highlight opacity-90"></div>
    </div>
    </div>

</div>    
<!-- end of page content-->

<div id="menu-main"
    class="menu menu-box-right menu-box-detached rounded-m"
    data-menu-width="260"
    data-menu-effect="menu-over"
    data-menu-active="nav-welcome">
    <?php $_smarty_tpl->renderSubTemplate("file:menu_main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
</div>


<div id="menu-highlights" 
         class="menu menu-box-bottom menu-box-detached rounded-m"
         data-menu-height="310" 
         data-menu-effect="menu-over">  

        <div class="card card-style">
            <div class="highlight-changer pt-3 pb-2">
                <p class="text-center">
                    We give some packed with a beautiful color scheme.<br>Tap on your favorite! The page will adapt!
                </p>
                <a href="#" data-change-highlight="blue"><i class="fa fa-circle color-blue-dark"></i><span class="color-blue-light">Default</span></a>
                <a href="#" data-change-highlight="red"><i class="fa fa-circle color-red-dark"></i><span class="color-red-light">Red</span></a>    
                <a href="#" data-change-highlight="orange"><i class="fa fa-circle color-orange-dark"></i><span class="color-orange-light">Orange</span></a>    
                <a href="#" data-change-highlight="pink2"><i class="fa fa-circle color-pink-dark"></i><span class="color-pink-light">Pink</span></a>    
                <a href="#" data-change-highlight="magenta"><i class="fa fa-circle color-magenta-dark"></i><span class="color-magenta-light">Purple</span></a>    
                <a href="#" data-change-highlight="aqua"><i class="fa fa-circle color-aqua-dark"></i><span class="color-aqua-light">Aqua</span></a>      
                <a href="#" data-change-highlight="teal"><i class="fa fa-circle color-teal-dark"></i><span class="color-teal-light">Teal</span></a>      
                <a href="#" data-change-highlight="mint"><i class="fa fa-circle color-mint-dark"></i><span class="color-mint-light">Mint</span></a>      
                <a href="#" data-change-highlight="green"><i class="fa fa-circle color-green-dark"></i><span class="color-green-light">Green</span></a>    
                <a href="#" data-change-highlight="grass"><i class="fa fa-circle color-green-dark"></i><span class="color-green-light">Grass</span></a>       
                <a href="#" data-change-highlight="sunny"><i class="fa fa-circle color-yellow-dark"></i><span class="color-yellow-light">Sunny</span></a>    
                <a href="#" data-change-highlight="yellow"><i class="fa fa-circle color-yellow-dark"></i><span class="color-yellow-light">Goldish</span></a>
                <a href="#" data-change-highlight="brown"><i class="fa fa-circle color-brown-dark"></i><span class="color-brown-light">Wood</span></a>    
                <a href="#" data-change-highlight="dark"><i class="fa fa-circle color-dark-dark"></i><span class="color-dark-light">Night</span></a>
                <a href="#" data-change-highlight="dark"><i class="fa fa-circle color-dark-dark"></i><span class="color-dark-light">Dark</span></a>
                <div class="clearfix"></div>
            </div>
        </div>
        <a href="#" class="close-menu btn btn-full btn-margins rounded-sm shadow-l bg-highlight btn-m font-900 text-uppercase mb-0">Close color Menu</a>
</div>

<div id="menu-language" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="240" data-menu-effect="menu-over">
    <div class="me-3 ms-3 mt-3">
        <h1 class="font-700 mb-0">Pilih bahasa</h1>
        <div class="list-group list-custom-small">
            <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=lang_id");?>
'><img class="me-3 mt-n1" width="20" src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/flags/Indonesia.png"><span>Indonesia</span><i class="fa fa-angle-right"></i></a>
            <a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=lang_en");?>
'><img class="me-3 mt-n1" width="20" src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/images/flags/United-States.png"><span>English</span><i class="fa fa-angle-right"></i></a>
        </div>
        <div class="clear"></div>
    </div>
</div>

<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/scripts/bootstrap.minv35.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/<?php echo $_smarty_tpl->getValue('theme');?>
/assets/scripts/customv35.js?v=1"><?php echo '</script'; ?>
>
</body>
</html>
<?php }
}
