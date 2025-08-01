{include file="header1.tpl"}
<div id="notification-fail" data-dismiss="notification-fail" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade hide">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-fail" class="fa fa-times-circle"></i>
	</span>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1" id="ErrorMsg">
</p>
</div>
<div id="notification-success" data-dismiss="notification-success" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade hide">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-success" class="fa fa-times-circle"></i>
	</span>
 <h1 class="font-15 color-white">Sukses!</h1>
 <p class="pb-1" id="SuccessMsg">
 </p>
</div>
<div class="card card-style mb-2">
	<div class="content my-2">
		<h4 class="font-600">CETAK FORMULIR PENERIMAAN PESERTA DIDIK BARU GEL. {$ppdb_settings.gelombang} TAHUN {$ppdb_settings.tahun_ajaran}</h4>
	</div>
</div>
<div class="PPDB-forms">
<form class="PPDBforms" method="GET" id="PPDBforms" autocomplete="off" data-action='{"?p=ppdb&cetak_formulir"|surl}' target="_blank">
<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Data Peserta Didik</h4>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-text" id="registration_number" name="registration_number" placeholder="{$lang.registration_number}" value="" autocomplete="off" >
			<label for="registration_number" class="color-highlight font-400 font-13">{$lang.registration_number}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="date" name="birthday" class="form-control validate-text" id="birthday" placeholder="{$lang.birthday}" >
			<label for="birthday" class="color-highlight font-400 font-13">{$lang.birthday}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<div class="d-block">
      		<input type="hidden" value="do_cetak_formulir" name="act">
			<button type="submit" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">Cetak Formulir Pendaftaran</button>		
		</div>
	</div>
</div>
</form>
</div>
{include file="footer.tpl"}