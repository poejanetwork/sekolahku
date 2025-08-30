{include file="header1.tpl"}
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
</div>
{/if}
{if $msg}
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
{if $msg.say == 'confirmation_sent'}
<h1 class="font-15 color-white">Sukses!</h1>
<p class="pb-1">
	{$lang.success_confirmation_sent}
</p>
{elseif $msg.say == 'password_sent'}
<h1 class="font-15 color-white">Sukses!</h1>
<p class="pb-1">
	{$lang.success_password_sent}
</p>
{else}
	<h1 class="font-15 color-white">Error!</h1>
	<p class="pb-1">
		{$lang.error_invalid_link}
	</p>
{/if}
</div>
{/if}
<form class="form_settings" method="post" id="form">
  {$token}
<div class="card card-style">
  <div class="content mb-0 mt-2">
	<div class="input-style no-borders has-icon validate-field mb-4">
		<i class="fa fa-at"></i>
		<input type="text" name="email" class="form-control validate-name" id="email" placeholder="{$lang.email}/{$lang.nisn}/{$lang.nip}" value="" required>
		<label for="email" class="color-blue-dark font-10 mt-1">{$lang.email}/{$lang.nisn}/{$lang.nip}</label>
		<i class="fa fa-times disabled invalid color-red-dark"></i>
		<i class="fa fa-check disabled valid color-green-dark"></i>
		<em>({$lang.required})</em>
	</div>
	
      {include file="captcha.tpl" action="forgot_password"}
      <input type="hidden" value="do_forgot" name="act">
      <button type="button" class="btn btn-m mt-2 mb-4 btn-full bg-green-dark rounded-sm text-uppercase font-900 w-100" onclick='document.getElementById("form").submit()'>{$lang.process}</button>

	  <div class="divider mt-4 mb-3"></div>
	  <div class="d-flex">
		<div class="w-100 pb-2 color-theme opacity-60 pb-3"><a href='{"?p=login"|surl}' class="color-theme">{$lang.login}</a></div>
	</div>

  </div>
</div>
{include file="footer.tpl"}