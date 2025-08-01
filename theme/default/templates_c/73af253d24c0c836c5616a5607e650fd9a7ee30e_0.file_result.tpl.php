<?php
/* Smarty version 5.4.5, created on 2025-07-31 16:17:57
  from 'file:result.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b9735aa8c51_28207000',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73af253d24c0c836c5616a5607e650fd9a7ee30e' => 
    array (
      0 => 'result.tpl',
      1 => 1751703691,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688b9735aa8c51_28207000 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
<div id="process" class="card card-style text-center">
	<div class="content py-5">
		<h1><i class="fa fa-spinner fa-spin fa-pulse color-dark-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Memproses</h3>
		<h4 class="text-uppercase pb-3">Harap menunggu...</h4>
	</div>
</div>
<?php if ($_smarty_tpl->getValue('result_status') == "success") {?>
<div id="result" class="card card-style text-center d-none">
	<div class="content py-5">
		<h1><i class="fa fa-check-circle color-green-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Berhasil</h3>
		<h4 class="text-uppercase pb-3">Mengarahkan ke halaman...</h4>
	</div>
</div>
<meta http-equiv="refresh" content="3; url=<?php echo $_smarty_tpl->getValue('result_link');?>
" />
<?php } else { ?>
<div id="result" class="card card-style text-center d-none">
	<div class="content py-5">
		<h1><i class="fa fa-window-close color-danger-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Error</h3>
		<h4 class="text-uppercase pb-3">Mengarahkan ke halaman...</h4>
	</div>
</div>
<meta http-equiv="refresh" content="3; url=<?php echo $_smarty_tpl->getValue('result_link');?>
" />
<?php }
$_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
echo '<script'; ?>
>
var process = document.querySelector("#process");
var result = document.querySelector("#result");
window.addEventListener("load", function() {
	setTimeout(function(){
		process.classList.add("d-none");
		result.classList.remove("d-none");
	}, 1000);
});
<?php echo '</script'; ?>
><?php }
}
