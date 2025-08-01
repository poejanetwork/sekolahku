{include file="header.tpl"}
  {if $error}
<div id="notification-1" data-dismiss="notification-1" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade show">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-1" class="fa fa-times-circle"></i>
	</span>
  {if $error.captcha}
  <h1 class="font-15 color-white">Error!</h1>
  <p class="pb-1">
	{$lang.error_captcha}
  </p>
  {/if}
  {if $error.details}
  <h1 class="font-15 color-white">Error!</h1>
  <p class="pb-1">
	{$lang.error_details}
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
 <h1 class="font-15 color-white">Sukses!</h1>
 <p class="pb-1">
	{$lang.support_sent}
 </p>
</div>
 {/if}

  <form action='{"?p=support"|surl}' class="form_settings" method="post">
    {$token}
	<div class="card card-style">
	  <div class="content mb-0 mt-1">
		<div class="input-style has-icon input-style-1 input-required">
			<i class="input-icon fa fa-user color-theme"></i>
			<span>{$lang.fullname}</span>
			<em>({$lang.required})</em>
			{if $user}
				<input type="text" class="form-control" name="fullname" id="fullname" placeholder="{$lang.fullname}" value="{$user.fullname}" readonly>
			{else}
			 <input type="text" class="form-control" name="fullname" id="fullname" placeholder="{$lang.fullname}" value="{$frm.fullname|escape:htmlall}" required>
			{/if}
		</div> 
		<div class="input-style has-icon input-style-1 input-required">
			<i class="input-icon fa fa-at color-theme"></i>
			<span>{$lang.email}</span>
			<em>({$lang.required})</em>
			{if $user}
			 <input type="email" class="form-control" name="email" id="email" placeholder="{$lang.email}" value="{$user.email}" readonly>
			{else}
			 <input type="email" class="form-control" name="email" id="email" placeholder="{$lang.email}" value="{$frm.email|escape:htmlall}" required>
			{/if}
		</div> 
		<div class="input-style has-icon input-style-1 input-required">
			<i class="input-icon fa fa-comments color-theme"></i>
			<span>{$lang.title}</span>
			<em>({$lang.required})</em>
			<input type="text" class="form-control" name="subject" id="subject" placeholder="{$lang.title}" value="{$frm.subject|escape:htmlall}" maxlength="255" required>
		</div> 
		<div class="input-style has-icon input-style-1 input-required">
			<span>{$lang.message}</span>
			<em>({$lang.required})</em>
			<textarea name="message" class="form-control" cols="45" rows="4" placeholder="{$lang.message}" required>{$frm.message|escape:htmlall|default:""}</textarea>
		</div> 

  		{include file="captcha.tpl" action="support"}
		  <input type="hidden" value="do_support" name="act">
		  <button type="submit" class="btn btn-m mt-2 mb-4 btn-full bg-green-dark rounded-sm text-uppercase font-900 w-100">{$lang.send_message}</button>
	</div>
</div>
	</form>
{include file="footer.tpl"}