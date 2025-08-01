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
</div>
{/if}
<form class="form_settings" method="post" id="form" autocomplete="off">
  {$token}
<div class="card card-style">
	<div class="content mb-0">
		<h3 class="font-600">Tambah Pelanggaran Baru</h3>
		<p>Form untuk pengajar</p>
		<input type="text" class="d-none">
		<input type="password" class="d-none">
		{if $getAccount}
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" placeholder="{$getAccount.fullname}" value="{$getAccount.fullname}" readonly>
			<input type="hidden" name="uid" id="uid" value="{$getAccount.id}">
			<label for="fullname" class="color-highlight font-400 font-13">{$lang.name} Siswa</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		{else}
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" placeholder="Masukkan nama siswa" value=""  data-search-users="" data-geturl="{$settings.siteurl}/index.php/status/postback/students" autocomplete="off">
			<input type="hidden" name="uid" id="uid" value="">
			<label for="fullname" class="color-highlight font-400 font-13">{$lang.name} Siswa</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		<div id="fullname-results" class="list-group list-custom-small d-none"></div>
		{/if}
		
		{if $menupelanggaran}
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="menupelanggaran" name="pelanggaran_id" class="form-control validate-text">
				{foreach from=$menupelanggaran item=p}
				<option value="{$p.id}">{$p.category|strtoupper} NKP: {$p.point} = {$p.description}</option>
				{/foreach}
			</select>
			<label for="menupelanggaran" class="color-highlight font-400 font-13">Jenis Pelanggaran</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(required)</em>
		</div>
		{/if}
		
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="description" class="form-control validate-tel" id="description" placeholder="Kosongkan jika tidak ada">
			<label for="description" class="color-highlight font-400 font-13">Catatan Tambahan?</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.optional})</em>
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
		<a href='{"?p=account"|surl}' class="card card-style mb-0">
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
{include file="footer.tpl"}