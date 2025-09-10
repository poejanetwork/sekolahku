{include file="header1.tpl"}
<form class="form_settings" action='{"?p=login"|surl}' method="post" id="form">

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
		<label for="password" class="color-blue-dark font-10 mt-1">{$lang.password}</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>({$lang.required})</em>
	</div>
	<div class="package-container text-center mb-5">
	<div class="package-heading">{$lang.login_as}</div>
	<div class="package-tab-wrapper rounded">
		<input type="radio" name="login_as" value="student" id="student" class="input" checked=""
		/>
		<label for="student" class="package-tab p-2 rounded font-12 font-600"> <i class="fa fa-user me-1"></i> Siswa </label>
		<input type="radio" name="login_as" value="teacher" id="teacher" class="input" />
		<label for="teacher" class="package-tab p-2 rounded font-12 font-600"> <i class="fa fa-user-graduate me-1"></i> Pengajar </label>
	</div>
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
      <button type="submit" id="btnSubmitForm" class="btn btn-m mt-2 mb-4 btn-full bg-green-dark rounded-sm text-uppercase font-900 w-100">{$lang.login}</button>

	  <div class="divider mt-4 mb-3"></div>
	  <div class="d-flex">
		<div class="w-100 pb-2 color-theme opacity-60 pb-3"><a href='{"?p=forgot_password"|surl}' class="color-theme">{$lang.forgot_pass}?</a></div>
	</div>

  </div>
</div>
</form>
{include file="footer.tpl"}