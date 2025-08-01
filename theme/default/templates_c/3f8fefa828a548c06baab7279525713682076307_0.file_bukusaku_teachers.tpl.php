<?php
/* Smarty version 5.4.5, created on 2025-07-31 16:59:52
  from 'file:bukusaku_teachers.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688ba108802957_32130953',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3f8fefa828a548c06baab7279525713682076307' => 
    array (
      0 => 'bukusaku_teachers.tpl',
      1 => 1753981190,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688ba108802957_32130953 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>

<div class="bg-dark p-2 rounded-3 content mb-3">
<div class="rounded-m position-relative">
	<div class="search-box search-dark shadow-m border-0 mt-0 bg-theme rounded-m bottom-0">
		<i class="fa fa-search ms-n2 color-highlight"></i>
		<input type="text" class="border-0" placeholder="Cari nama siswa" data-search="" data-geturl="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/index.php/status/postback/students">
	</div>
	<div class="search-results disabled-search-list shadow-xl rounded-m mt-2"></div>
	<div class="search-no-results shadow-xl rounded-m mt-2 disabled">
		<p class="card card-style mx-1 px-3 mt-1 mb-0 shadow-0">Data siswa tidak ditemukan</p>
	</div>
</div>
</div>

<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=bukusaku&add");?>
' class="btn btn-l btn-icon bg-dark-dark rounded-s shadow-s btn-full btn-margins font-900 text-uppercase text-start mb-2"><i class="fa fa-plus text-center"></i> Tambah Pelanggaran</a>

<div class="card-body">
<?php if ($_smarty_tpl->getValue('list_pelanggaran')) {
$__section_p_0_loop = (is_array(@$_loop=$_smarty_tpl->getValue('list_pelanggaran')) ? count($_loop) : max(0, (int) $_loop));
$__section_p_0_total = $__section_p_0_loop;
$_smarty_tpl->tpl_vars['__smarty_section_p'] = new \Smarty\Variable(array());
if ($__section_p_0_total !== 0) {
for ($__section_p_0_iteration = 1, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index'] = 0; $__section_p_0_iteration <= $__section_p_0_total; $__section_p_0_iteration++, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index']++){
?>
<div class="bg-white p-1 rounded-m mb-3 border-start <?php if ($_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category'] == "berat") {?>border-danger<?php } elseif ($_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category'] == "sedang") {?>border-warning<?php } else { ?>border-secondary<?php }?> border-3">
	<div class="content mb-2 mt-3">
		<div class="d-flex">
			<div class="w-100 align-self-center">
				<h6 class="font-14 font-500"><?php echo $_smarty_tpl->getValue('lang')['offender'];?>
<span class="float-end color-dark-dark"><?php echo $_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['nisn'];?>
</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 font-500"><?php echo $_smarty_tpl->getValue('lang')['teachers'];?>
<span class="float-end color-dark-dark"><?php echo $_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['nip'];?>
</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 font-500"><?php echo $_smarty_tpl->getValue('lang')['date'];?>
<span class="float-end color-gray-dark"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['created_at'],"%e %B %Y");?>
</span></h6>
			</div>
		</div>      
		<div class="divider mt-2 mb-3"></div>

		<div class="d-flex">
			<div>
				<a href="javascript:void(0)" class="icon icon-m bg-red-dark rounded-m shadow-xl"><i class="fa font-20">-<?php echo $_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['point'];?>
</i></a>
			</div>
			<div class="align-self-center ps-3">
				<h5 class="font-600 font-14 mb-n2"><?php echo $_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['description'];?>
</h5>
				<span class="color-theme font-11"><?php echo $_smarty_tpl->getValue('lang')['category'];?>
: <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('strtoupper')($_smarty_tpl->getValue('list_pelanggaran')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category']);?>
</span>
			</div>
		</div>

	</div>            
</div>
<?php
}
}
?>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		<?php echo $_smarty_tpl->getValue('pages');?>

	</ul>
</nav>
<?php }?>
</div>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
