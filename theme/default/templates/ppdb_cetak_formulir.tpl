{include file="header1.tpl"}
<div class="card card-style mb-2">
	<div class="content my-2">
		<h4 class="font-600">CETAK FORMULIR PENERIMAAN PESERTA DIDIK BARU GEL. {$ppdb_settings.gelombang} TAHUN {$ppdb_settings.tahun_ajaran}</h4>
	</div>
</div>
<div class="PPDB-forms">
<form class="PPDBforms" method="GET" id="PPDBforms" autocomplete="off" data-action='{"?p=ppdb&cetak_formulir"|surl}'>
<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Data Peserta Didik</h4>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" min="0" class="form-control validate-number" id="registration_number" name="registration_number" placeholder="{$lang.registration_number}" value="" autocomplete="off" >
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
			<button type="submit" data-action="skip" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">Cetak Formulir Pendaftaran</button>		
		</div>
	</div>
</div>
</form>
</div>
{include file="footer.tpl"}