{include file="header.tpl"}
{if $error}
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
{if $error.details}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
{$lang.error_details}
</p>
{/if}
{if $error.captcha}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_captcha}
</p>
{/if}
{if $error.invalid_login}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_invalid_login}
</p>
{/if}
{if $error.invalid_login_bf}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_invalid_login_bf} {$error.invalid_login_bf_count} times
</p>
{/if}
{if $error.invalid_login_locked}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_invalid_login_locked}
</p>
{/if}
{if $error.tfa}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_tfa}
</p>
{/if}
{if $error.confirm}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.error_acc_confirm}
</p>
{/if}
{if $error.pin}
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1">
	{$lang.transaction_pin}
</p>
{/if}
</div>
{/if}
{if $msg}
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
{if $msg.say == 'confirmed'}
<h1 class="font-15 color-white">Sukses!</h1>
<p class="pb-1">
	{$lang.transaction_pin}
</p>
{else}
	<h1 class="font-15 color-white">Error!</h1>
	<p class="pb-1">
		{$lang.error_confirmed}
	</p>
{/if}
</div>
{/if}
<form class="form_settings" method="post" id="form">
  {$token}
<div class="card card-style">
  <div class="content mb-0 mt-2">
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="fa fa-user"></i>
		<input type="text" name="email" class="form-control validate-name" id="email" placeholder="{$lang.email}/{$lang.nisn}/{$lang.nip}" value="" required>
		<label for="email" class="color-blue-dark font-10 mt-1">{$lang.email}/{$lang.nisn}/{$lang.nip}</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="fa fa-lock"></i>
		<input type="password" name="password" class="form-control validate-name" id="password" placeholder="{$lang.password}" required>
		<label for="email" class="color-blue-dark font-10 mt-1">{$lang.password}</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style no-borders has-icon mb-4">
        <i class="input-icon fa fa-school color-theme"></i>
		<label for="login_as" class="color-highlight">{$lang.login_as}</label>
		<select name="login_as" required id="login_as">
			<option value="default" disabled="" selected="">{$lang.login_as}</option>
			<option value="user">Siswa</option>
			<option value="teacher">Pengajar</option>
		</select>
		<span><i class="fa fa-chevron-down"></i></span>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<i class="fa fa-check disabled invalid color-red-dark"></i>
		<em></em>
	</div>
	
	{if $settings.use_tfa}
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="input-icon fa fa-lock color-theme"></i>
		<input class="form-control validate-name" placeholder="{$lang.2fa_code} ({$lang.optional})" type="name" name="tfa_code" value="" autocomplete="off">
		<span>{$lang.2fa_code}</span>
		<em>(Optional)</em>
	</div> 
	{/if}
      {include file="captcha.tpl" action="login"}
      <input type="hidden" value="do_login" name="act">
      <button type="button" class="btn btn-m mt-2 mb-4 btn-full bg-green-dark rounded-sm text-uppercase font-900 w-100" onclick='document.getElementById("form").submit()'>{$lang.login}</button>

	  <div class="divider mt-4 mb-3"></div>
	  <div class="d-flex">
		<div class="w-100 pb-2 color-theme opacity-60 pb-3"><a href='{"?p=forgot_password"|surl}' class="color-theme">{$lang.forgot_pass}?</a></div>
	</div>

  </div>
</div>
{include file="footer.tpl"}