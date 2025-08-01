<?php
/* Smarty version 5.4.5, created on 2025-07-27 03:09:27
  from 'file:user_login.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_6885986738f979_90687274',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9e785a6b99a90328e5a90c2cb2df524ae7f2baab' => 
    array (
      0 => 'user_login.tpl',
      1 => 1751399231,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header.tpl' => 1,
    'file:captcha.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_6885986738f979_90687274 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
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
<?php }
if ($_smarty_tpl->getValue('error')['captcha']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_captcha'];?>

</p>
<?php }
if ($_smarty_tpl->getValue('error')['invalid_login']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_invalid_login'];?>

</p>
<?php }
if ($_smarty_tpl->getValue('error')['invalid_login_bf']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_invalid_login_bf'];?>
 <?php echo $_smarty_tpl->getValue('error')['invalid_login_bf_count'];?>
 times
</p>
<?php }
if ($_smarty_tpl->getValue('error')['invalid_login_locked']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_invalid_login_locked'];?>

</p>
<?php }
if ($_smarty_tpl->getValue('error')['tfa']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_tfa'];?>

</p>
<?php }
if ($_smarty_tpl->getValue('error')['confirm']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['error_acc_confirm'];?>

</p>
<?php }
if ($_smarty_tpl->getValue('error')['pin']) {?>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['transaction_pin'];?>

</p>
<?php }?>
</div>
<?php }
if ($_smarty_tpl->getValue('msg')) {?>
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
<?php if ($_smarty_tpl->getValue('msg')['say'] == 'confirmed') {?>
<h1 class="font-15 color-white">Sukses!</h1>
<p class="pb-1">
	<?php echo $_smarty_tpl->getValue('lang')['transaction_pin'];?>

</p>
<?php } else { ?>
	<h1 class="font-15 color-white">Error!</h1>
	<p class="pb-1">
		<?php echo $_smarty_tpl->getValue('lang')['error_confirmed'];?>

	</p>
<?php }?>
</div>
<?php }?>
<form class="form_settings" method="post" id="form">
  <?php echo $_smarty_tpl->getValue('token');?>

<div class="card card-style">
  <div class="content mb-0 mt-2">
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="fa fa-user"></i>
		<input type="text" name="email" class="form-control validate-name" id="email" placeholder="<?php echo $_smarty_tpl->getValue('lang')['email'];?>
/<?php echo $_smarty_tpl->getValue('lang')['nisn'];?>
/<?php echo $_smarty_tpl->getValue('lang')['nip'];?>
" value="" required>
		<label for="email" class="color-blue-dark font-10 mt-1"><?php echo $_smarty_tpl->getValue('lang')['email'];?>
/<?php echo $_smarty_tpl->getValue('lang')['nisn'];?>
/<?php echo $_smarty_tpl->getValue('lang')['nip'];?>
</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
	</div>
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="fa fa-lock"></i>
		<input type="password" name="password" class="form-control validate-name" id="password" placeholder="<?php echo $_smarty_tpl->getValue('lang')['password'];?>
" required>
		<label for="email" class="color-blue-dark font-10 mt-1"><?php echo $_smarty_tpl->getValue('lang')['password'];?>
</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
	</div>
	<div class="input-style no-borders has-icon mb-4">
        <i class="input-icon fa fa-school color-theme"></i>
		<label for="login_as" class="color-highlight"><?php echo $_smarty_tpl->getValue('lang')['login_as'];?>
</label>
		<select name="login_as" required id="login_as">
			<option value="default" disabled="" selected=""><?php echo $_smarty_tpl->getValue('lang')['login_as'];?>
</option>
			<option value="user">Siswa</option>
			<option value="teacher">Pengajar</option>
		</select>
		<span><i class="fa fa-chevron-down"></i></span>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<i class="fa fa-check disabled invalid color-red-dark"></i>
		<em></em>
	</div>
	
	<?php if ($_smarty_tpl->getValue('settings')['use_tfa']) {?>
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="input-icon fa fa-lock color-theme"></i>
		<input class="form-control validate-name" placeholder="<?php echo $_smarty_tpl->getValue('lang')['2fa_code'];?>
 (<?php echo $_smarty_tpl->getValue('lang')['optional'];?>
)" type="name" name="tfa_code" value="" autocomplete="off">
		<span><?php echo $_smarty_tpl->getValue('lang')['2fa_code'];?>
</span>
		<em>(Optional)</em>
	</div> 
	<?php }?>
      <?php $_smarty_tpl->renderSubTemplate("file:captcha.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('action'=>"login"), (int) 0, $_smarty_current_dir);
?>
      <input type="hidden" value="do_login" name="act">
      <button type="button" class="btn btn-m mt-2 mb-4 btn-full bg-green-dark rounded-sm text-uppercase font-900 w-100" onclick='document.getElementById("form").submit()'><?php echo $_smarty_tpl->getValue('lang')['login'];?>
</button>

      <div class="divider"></div>

      <a href="<?php echo $_smarty_tpl->getValue('googleauth');?>
" class="btn btn-icon btn-m mt-2 mb-4 btn-full rounded-s shadow-l bg-google text-uppercase font-900 text-left"><i class="fab fa-google text-center"></i><?php echo $_smarty_tpl->getValue('lang')['login_google'];?>
</a>
	  <div class="divider mt-4 mb-3"></div>
	  <div class="d-flex">
		<div class="w-50 font-11 pb-2 color-theme opacity-60 pb-3 text-start"><a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=register");?>
' class="color-theme"><?php echo $_smarty_tpl->getValue('lang')['register'];?>
</a></div>
		<div class="w-50 font-11 pb-2 color-theme opacity-60 pb-3 text-end"><a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=forgot_password");?>
' class="color-theme"><?php echo $_smarty_tpl->getValue('lang')['forgot_pass'];?>
?</a></div>
	</div>

  </div>
</div>
<?php $_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
