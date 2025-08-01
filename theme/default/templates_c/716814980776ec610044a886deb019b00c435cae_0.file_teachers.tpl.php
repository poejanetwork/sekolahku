<?php
/* Smarty version 5.4.5, created on 2025-07-31 13:51:49
  from 'file:teachers.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b74f58fe656_57530828',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '716814980776ec610044a886deb019b00c435cae' => 
    array (
      0 => 'teachers.tpl',
      1 => 1753969906,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688b74f58fe656_57530828 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Daftar Pengajar</h1>
		<p class="opacity-50 color-white mb-0">Guru-guru hebat <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>
<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('allTeachers'), 'n');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('n')->value) {
$foreach0DoElse = false;
?>
<div class="card card-style mb-3">
	<div class="content">
		<div class="d-flex">
			<div>
				<img src="<?php echo $_smarty_tpl->getValue('n')['avatar'];?>
" width="50" class="me-3 bg-highlight rounded-xl">
			</div>
			<div>
				<h3 class="mb-0 pt-1"><?php echo $_smarty_tpl->getValue('n')['fullname'];?>
</h3>
				<p class="color-highlight text-uppercase font-11 mt-n1"><?php echo $_smarty_tpl->getValue('n')['major_id'];?>
</p>
			</div>
		</div>
	</div>
</div>
<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		<?php echo $_smarty_tpl->getValue('pages');?>

	</ul>
</nav>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
