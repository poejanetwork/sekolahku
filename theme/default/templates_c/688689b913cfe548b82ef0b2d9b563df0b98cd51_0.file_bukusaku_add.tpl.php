<?php
/* Smarty version 5.4.5, created on 2025-07-31 16:09:19
  from 'file:bukusaku_add.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688b952f30c232_51754730',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '688689b913cfe548b82ef0b2d9b563df0b98cd51' => 
    array (
      0 => 'bukusaku_add.tpl',
      1 => 1753978153,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688b952f30c232_51754730 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
if ($_smarty_tpl->getValue('error')) {?>
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
<?php if ($_smarty_tpl->getValue('error')['details']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
<?php echo $_smarty_tpl->getValue('lang')['error_details'];?>

</p>
<?php }?>
</div>
<?php }?>
<form class="form_settings" method="post" id="form" autocomplete="off">
  <?php echo $_smarty_tpl->getValue('token');?>

<div class="card card-style">
	<div class="content mb-0">
		<h3 class="font-600">Tambah Pelanggaran Baru</h3>
		<p>Form untuk pengajar</p>
		<input type="text" class="d-none">
		<input type="password" class="d-none">
		<?php if ($_smarty_tpl->getValue('getAccount')) {?>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" placeholder="<?php echo $_smarty_tpl->getValue('getAccount')['fullname'];?>
" value="<?php echo $_smarty_tpl->getValue('getAccount')['fullname'];?>
" readonly>
			<input type="hidden" name="uid" id="uid" value="<?php echo $_smarty_tpl->getValue('getAccount')['id'];?>
">
			<label for="fullname" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['name'];?>
 Siswa</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		<?php } else { ?>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" placeholder="Masukkan nama siswa" value=""  data-search-users="" data-geturl="<?php echo $_smarty_tpl->getValue('settings')['siteurl'];?>
/index.php/status/postback/students" autocomplete="off">
			<input type="hidden" name="uid" id="uid" value="">
			<label for="fullname" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['name'];?>
 Siswa</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		<div id="fullname-results" class="list-group list-custom-small d-none"></div>
		<?php }?>
		
		<?php if ($_smarty_tpl->getValue('menupelanggaran')) {?>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="menupelanggaran" name="pelanggaran_id" class="form-control validate-text">
				<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('menupelanggaran'), 'p');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('p')->value) {
$foreach0DoElse = false;
?>
				<option value="<?php echo $_smarty_tpl->getValue('p')['id'];?>
"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('strtoupper')($_smarty_tpl->getValue('p')['category']);?>
 NKP: <?php echo $_smarty_tpl->getValue('p')['point'];?>
 = <?php echo $_smarty_tpl->getValue('p')['description'];?>
</option>
				<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
			</select>
			<label for="menupelanggaran" class="color-highlight font-400 font-13">Jenis Pelanggaran</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		<?php }?>
		
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="description" class="form-control validate-tel" id="description" placeholder="Kosongkan jika tidak ada">
			<label for="description" class="color-highlight font-400 font-13">Catatan Tambahan?</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['optional'];?>
)</em>
		</div>
		
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="datetime-local" name="created_at" class="form-control validate-text" id="created_at">
			<label for="created_at" class="color-highlight font-400 font-13">Waktu Pelanggaran</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		<div class="d-block">
      		<input type="hidden" value="do_add" name="act">
			<button type="submit" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">Simpan Pelanggaran</button>		
		</div>
	</div>
</div>
</form>

<div class="row text-center">
	<div class="col-12">
		<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=account");?>
' class="card card-style mb-0">
			<div class="d-flex py-3 my-1">
				<div class="align-self-center px-3">
					<h4 class="text-start color-theme font-600 font-17"> Kembali ke akun</h4>
					<p class="text-start mt-n2 font-11 color-highlight mb-0">
						Data akun anda
					</p>
				</div>
				<div class="align-self-center">
					<i class="fa fa-arrow-right ps-2 pe-1"></i>
				</div>
			</div>
		</a>
	</div>
</div>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
