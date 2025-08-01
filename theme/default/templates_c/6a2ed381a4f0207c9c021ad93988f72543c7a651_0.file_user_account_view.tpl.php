<?php
/* Smarty version 5.4.5, created on 2025-07-31 16:49:41
  from 'file:user_account_view.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b9ea5e849a3_50847348',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6a2ed381a4f0207c9c021ad93988f72543c7a651' => 
    array (
      0 => 'user_account_view.tpl',
      1 => 1753980579,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688b9ea5e849a3_50847348 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
if ($_smarty_tpl->getValue('account_view')) {?>
<div class="card card-style">
	<div class="content">
		<div class="d-flex">
			<div>
				<?php if ($_smarty_tpl->getValue('user')['avatar'] == '') {?>
					<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=edit_account&avatar");?>
'><img src="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/plugins/admin/assets/images/default_avatar.png" width="50" class="me-3 rounded-xl bg-highlight"></a>
				<?php } else { ?>
					<img src="<?php echo $_smarty_tpl->getValue('user')['avatar'];?>
" width="50" class="me-3 bg-highlight rounded-xl">
				<?php }?>
			</div>
			<div>
				<h2 class="mb-0 pt-1"><?php echo $_smarty_tpl->getValue('account_view')['fullname'];?>
</h2>
				<p class="font-11 mt-n0 color-highlight"><?php echo $_smarty_tpl->getValue('account_view')['email'];?>
</p>
			</div>
		</div>
	</div>
</div>

<div class="card card-style bg-theme pb-0">
	<div class="content" id="tab-group-2">
		<div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-teal-dark">
			<a href="#" data-active="" data-bs-toggle="collapse" data-bs-target="#data-identitas" class="bg-teal-dark no-click">Identitas</a>
			<a href="#" data-bs-toggle="collapse" data-bs-target="#data-profile">Profile</a>
			<a href="#" data-bs-toggle="collapse" data-bs-target="#data-lain"><?php if ($_smarty_tpl->getValue('account_view')['parents_type'] == 1) {?>Ortu<?php } else { ?>Wali<?php }?></a>
		</div>
		<div class="clearfix mb-3"></div>
		<div data-bs-parent="#tab-group-2" class="collapse show" id="data-identitas">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Kelas</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['class_id'];?>
</a><i class="fa fa-id-badge color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">NIS</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['nis'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">NISN</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['nisn'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="data-profile">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['religion'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['religion_id'];?>
</a><i class="fa fa-venus-mars color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['sex'];?>
</strong><a href="javascript:void(0)"><?php if ($_smarty_tpl->getValue('account_view')['sex'] == "L") {?>Laki-laki<?php } else { ?>Perempuan<?php }?></a><i class="fa fa-venus-mars color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Tempat / Tanggal Lahir</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['birthday_place'];?>
 / <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('account_view')['birthday'],"%e %B %Y");?>
</a><i class="fa fa-map-marker-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1 border-0"><strong class="font-12 color-teal-dark">Email</strong><a href="mailto:<?php echo $_smarty_tpl->getValue('account_view')['email'];?>
"><?php echo $_smarty_tpl->getValue('account_view')['email'];?>
</a><i class="fa fa-email color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1 border-0"><strong class="font-12 color-teal-dark">No. HP</strong><a href="tel:<?php echo $_smarty_tpl->getValue('account_view')['phone'];?>
">+<?php echo $_smarty_tpl->getValue('account_view')['phone'];?>
</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Alamat</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['address_user'];?>
 RT.<?php echo $_smarty_tpl->getValue('account_view')['rt'];?>
 RW.<?php echo $_smarty_tpl->getValue('account_view')['rw'];?>
 Dusun <?php echo $_smarty_tpl->getValue('account_view')['sub_village'];?>
 Desa <?php echo $_smarty_tpl->getValue('account_view')['village'];?>
 Kec. <?php echo $_smarty_tpl->getValue('account_view')['sub_district'];?>
 Kota/Kab. <?php echo $_smarty_tpl->getValue('account_view')['district'];?>
 Kode Pos <?php echo $_smarty_tpl->getValue('account_view')['postal_code'];?>
</a><i class="fa fa-address-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="data-lain">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_father_name'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['parents_father_name'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_father_job'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['parents_father_job_id'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1 border-0"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_father_phone'];?>
</strong><a href="tel:<?php echo $_smarty_tpl->getValue('account_view')['parents_father_phone'];?>
">+<?php echo $_smarty_tpl->getValue('account_view')['parents_father_phone'];?>
</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_name'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['parents_mother_name'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_job'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['parents_mother_job_id'];?>
</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1 border-0"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_phone'];?>
</strong><a href="tel:<?php echo $_smarty_tpl->getValue('account_view')['parents_mother_phone'];?>
">+<?php echo $_smarty_tpl->getValue('account_view')['parents_mother_phone'];?>
</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark"><?php echo $_smarty_tpl->getValue('lang')['address_parents'];?>
</strong><a href="javascript:void(0)"><?php echo $_smarty_tpl->getValue('account_view')['address_parent'];?>
</a><i class="fa fa-address-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
	</div>    
</div>

<div class="card preload-img entered loaded" data-ll-status="loaded">
<div class="card-body">
	<div class="card rounded-m mb-0">
		<div class="content mb-0 mt-3">
					<p class="font-600 color-highlight mb-0">NKP Anda</p>
			<div class="d-flex">
				<div class="pe-2 align-self-center text-center">
					<h1 class="mb-2"><?php echo $_smarty_tpl->getValue('total_nkp');?>
 poin</h1>
				</div>
				<div class="w-100 align-self-center ps-2">
					<?php if ($_smarty_tpl->getValue('total_nkp') >= $_smarty_tpl->getValue('settings')['nkp_sp1'] && $_smarty_tpl->getValue('total_nkp') < $_smarty_tpl->getValue('settings')['nkp_sp2']) {?>
					<div class="alert alert-small rounded-s bg-yellow-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-exclamation-triangle font-18"></i></span>
						<h4 class="text-uppercase color-white">Anda sudah SP 1</h4>
					</div>
					<?php } elseif ($_smarty_tpl->getValue('total_nkp') >= $_smarty_tpl->getValue('settings')['nkp_sp2']) {?>
					<div class="alert alert-small rounded-s bg-red-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-exclamation-triangle font-18"></i></span>
						<h4 class="text-uppercase color-white">Anda sudah SP 2</h4>
					</div>
					<?php } else { ?>
					<div class="alert alert-small rounded-s bg-green-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-check font-18"></i></span>
						<h4 class="text-uppercase color-white">Belum ada SP</h4>
					</div>
					<?php }?>
				</div>
			</div>
		</div>    
	</div>    
</div>
	<div class="card-overlay bg-highlight opacity-90"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>

<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=bukusaku&add&id&".((string)$_smarty_tpl->getValue('account_view')['id']));?>
' class="btn btn-l btn-icon bg-dark-dark rounded-s shadow-s btn-full btn-margins font-900 text-uppercase text-start"><i class="fa fa-plus text-center"></i> Tambah Pelanggaran</a>

<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">Riwayat NKP</h5>
	<div class="clearfix"></div>
		<p>
			Informasi riwayat terkait Nilai Kredit Pelanggarn (NKP) siswa.
		</p>
		<?php
$__section_p_0_loop = (is_array(@$_loop=$_smarty_tpl->getValue('nkp_user')) ? count($_loop) : max(0, (int) $_loop));
$__section_p_0_total = $__section_p_0_loop;
$_smarty_tpl->tpl_vars['__smarty_section_p'] = new \Smarty\Variable(array());
if ($__section_p_0_total !== 0) {
for ($__section_p_0_iteration = 1, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index'] = 0; $__section_p_0_iteration <= $__section_p_0_total; $__section_p_0_iteration++, $_smarty_tpl->tpl_vars['__smarty_section_p']->value['index']++){
?>
		<div class="d-flex">
			<div>
				<a href="javascript:void(0)" class="icon icon-l <?php if ($_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category'] == 'berat') {?>bg-red-dark<?php } elseif ($_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category'] == 'sedang') {?>bg-yellow-dark<?php } else { ?>bg-brown-dark<?php }?> rounded-m shadow-xl" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pelanggaran <?php echo $_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['category'];?>
"><i class="fa font-20">-<?php echo $_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['point'];?>
</i></a>
			</div>
			<div class="align-self-center ps-3 flex-grow-1">
				<h5 class="font-400 font-14 mb-n2"><?php echo $_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['description'];?>
</h5>
				<span class="color-highlight font-12"><i class="fa fa-arrow-right pe-1"></i> <?php if ($_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['description_other']) {
echo $_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['description_other'];
} else { ?>&nbsp;<?php }?></span>
				<div class="color-gray-dark font-11 d-block text-end color-gray"><i class="fa fa-calendar pe-1 color-dark-dark"></i> <?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['created_at'],"%e %B %Y");?>
 <i class="fa fa-user px-1 color-dark-dark"></i> <?php echo $_smarty_tpl->getValue('nkp_user')[($_smarty_tpl->getValue('__smarty_section_p')['index'] ?? null)]['tfullname'];?>
</div>
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
<?php }
$_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
