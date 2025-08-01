<?php
/* Smarty version 5.4.5, created on 2025-07-31 13:52:08
  from 'file:alumni.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b750867bf37_85472623',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2e6d52db6585b1c6c2971cf11d07783012a598db' => 
    array (
      0 => 'alumni.tpl',
      1 => 1751386516,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688b750867bf37_85472623 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
<div class="row text-center">
	<div class="col-12">
		<div class="card card-style mb-0">
			<div class="d-flex py-3 my-1">
				<div class="align-self-center px-3">
					<img src="<?php echo $_smarty_tpl->getValue('settings')['sitelogo'];?>
" class="ps-2 pe-1" width="50">
				</div>
				<div class="align-self-center">
					<h4 class="text-start color-theme font-600 font-17"> <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</h4>
					<p class="text-start mt-n2 font-11 color-highlight mb-0">
						Kumpulan data alumni
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="card-body pt-0">
		<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('alumni'), 'n');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('n')->value) {
$foreach0DoElse = false;
?>
		<a href="#" class="card card-style mb-3 mx-0">
			<div class="d-flex ">
				<div class="mt-2">
					<h1 class="center-text">
						<img src="<?php echo $_smarty_tpl->getValue('n')['thumbnail'];?>
" data-src="<?php echo $_smarty_tpl->getValue('n')['thumbnail'];?>
" width="100" class="rounded-sm preload-img entered loaded" data-ll-status="loaded">
					</h1>
				</div>
				<div class="pt-1">
					<h4 class="color-theme font-600"><?php echo $_smarty_tpl->getValue('n')['name'];?>
</h4>
					<p class="mt-n2 font-12 color-highlight mb-0">
						<?php echo $_smarty_tpl->getValue('n')['instansi'];?>

					</p>
					<h6 class="badge bg-red-dark font-12 font-600 text-center mb-0">Alumni <?php echo $_smarty_tpl->getValue('n')['graduation_year'];?>
</h6>
				</div>
				
			</div>
		</a>
		<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		<?php echo $_smarty_tpl->getValue('pages');?>

	</ul>
</nav>
</div>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
