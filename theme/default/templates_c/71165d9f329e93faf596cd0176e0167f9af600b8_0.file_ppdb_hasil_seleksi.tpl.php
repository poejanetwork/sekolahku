<?php
/* Smarty version 5.4.5, created on 2025-07-28 07:05:40
  from 'file:ppdb_hasil_seleksi.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688721440d9c17_72896131',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '71165d9f329e93faf596cd0176e0167f9af600b8' => 
    array (
      0 => 'ppdb_hasil_seleksi.tpl',
      1 => 1753686332,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688721440d9c17_72896131 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>
<div class="card card-style mb-2">
	<div class="content my-2">
		<h4 class="font-600">HASIL SELEKSI PENERIMAAN PESERTA DIDIK BARU TAHUN <?php echo $_smarty_tpl->getValue('ppdb_settings')['tahun_ajaran'];?>
</h4>
	</div>
</div>
<div class="card card-style">
	<div class="content">
		<h3 class="font-16">Daftar Peserta Didik</h3>
		<form action='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb&hasil_seleksi");?>
' method="GET" class="input-style has-borders input-style-always-active no-icon my-4">
			<label for="admission_phase_id" class="color-highlight font-500">Gelombang Pendaftaran</label>
			<select id="admission_phase_id" name="admission_phase_id" onchange="redirectToPhase(this.value)">
				<option value="" <?php if ($_smarty_tpl->getValue('phase') == '') {?>selected<?php }?>>Semua Gelombang</option>
				<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('allPhases'), 'p');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('p')->value) {
$foreach0DoElse = false;
?>
				<option value="<?php echo $_smarty_tpl->getValue('p');?>
" <?php if ($_smarty_tpl->getValue('phase') == $_smarty_tpl->getValue('p')) {?>selected<?php }?>>Gelombang <?php echo $_smarty_tpl->getValue('p');?>
</option>
				<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
			</select>
			<span><i class="fa fa-chevron-down"></i></span>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<i class="fa fa-check disabled invalid color-red-dark"></i>
			<em></em>
		</form>
		<div class="divider mt-4"></div>
		<?php
$__section_p_0_loop = (is_array(@$_loop=$_smarty_tpl->getValue('ppdb_pesertaDidik')) ? count($_loop) : max(0, (int) $_loop));
$__section_p_0_total = $__section_p_0_loop;
$_smarty_tpl->tpl_vars['__smarty_section_p'] = new \Smarty\Variable(array());
if ($__section_p_0_total !== 0) {
for ($__section_p_0_iteration = 1, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index'] = 0; $__section_p_0_iteration <= $__section_p_0_total; $__section_p_0_iteration++, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index']++){
?>
		<div class="d-flex">
			<div>
				<span class="icon icon-m bg-<?php if ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 97) {?>gray<?php } elseif ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 99) {?>red<?php } else { ?>green<?php }?>-dark rounded-m shadow-xl"><i class="fa fa-<?php if ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 97) {?>question-circle<?php } elseif ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 99) {?>exclamation<?php } else { ?>check<?php }?>"></i></span>
			</div>
			<div class="align-self-center ps-3">
				<h5 class="font-500 font-14 mb-n2 text-uppercase"><?php echo $_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['fullname'];?>
</h5>
				<span class="color-theme font-11">NISN : <?php echo $_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['nisn'];?>
</span>
			</div>
			<div class="align-self-center ms-auto">
				<h5 class="color-<?php if ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 97) {?>dark<?php } elseif ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 99) {?>red<?php } else { ?>green<?php }?>-dark mb-n1 text-end"><?php if ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 97) {?>Dalam Proses<?php } elseif ($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['is_student'] == 99) {?>Gagal<?php } else { ?>Lulus<?php }?></h5>
				<span class="color-theme d-block font-11 text-end"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('ppdb_pesertaDidik')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['created_at'],"%e %B %Y");?>
</span>
			</div>
		</div>
		<div class="divider mt-3 mb-3"></div>
		<?php
}
}
?>

	</div>
</div>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		<?php echo $_smarty_tpl->getValue('pages');?>

	</ul>
</nav>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>

<?php echo '<script'; ?>
>
function redirectToPhase(phase) {
	if(phase){
		window.location.href = '<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb&hasil_seleksi");?>
/phase_'+phase;
	}else{
		window.location.href = '<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb&hasil_seleksi");?>
';
	}
}
<?php echo '</script'; ?>
>
<?php }
}
