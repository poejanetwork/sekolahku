{include file="header1.tpl"}
<div class="card card-style mb-2">
	<div class="content my-2">
		<h4 class="font-600">HASIL SELEKSI PENERIMAAN PESERTA DIDIK BARU TAHUN {$ppdb_settings.tahun_ajaran}</h4>
	</div>
</div>
<div class="card card-style">
	<div class="content">
		<h3 class="font-16">Daftar Peserta Didik</h3>
		<form action='{"?p=ppdb&hasil_seleksi"|surl}' method="GET" class="input-style has-borders input-style-always-active no-icon my-4">
			<label for="admission_phase_id" class="color-highlight font-500">Gelombang Pendaftaran</label>
			<select id="admission_phase_id" name="admission_phase_id" onchange="redirectToPhase(this.value)">
				<option value="" {if $phase==""}selected{/if}>Semua Gelombang</option>
				{foreach from=$allPhases item=p}
				<option value="{$p}" {if $phase==$p}selected{/if}>Gelombang {$p}</option>
				{/foreach}
			</select>
			<span><i class="fa fa-chevron-down"></i></span>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<i class="fa fa-check disabled invalid color-red-dark"></i>
			<em></em>
		</form>
		<div class="divider mt-4"></div>
		{section name=p loop=$ppdb_pesertaDidik}
		<div class="d-flex">
			<div>
				<span class="icon icon-m bg-{if $ppdb_pesertaDidik[p].is_student==97}gray{else if $ppdb_pesertaDidik[p].is_student==99}red{else}green{/if}-dark rounded-m shadow-xl"><i class="fa fa-{if $ppdb_pesertaDidik[p].is_student==97}question-circle{else if $ppdb_pesertaDidik[p].is_student==99}exclamation{else}check{/if}"></i></span>
			</div>
			<div class="align-self-center ps-3">
				<h5 class="font-500 font-14 mb-n2 text-uppercase">{$ppdb_pesertaDidik[p].fullname}</h5>
				<span class="color-theme font-11">NISN : {$ppdb_pesertaDidik[p].nisn}</span>
			</div>
			<div class="align-self-center ms-auto">
				<h5 class="color-{if $ppdb_pesertaDidik[p].is_student==97}dark{else if $ppdb_pesertaDidik[p].is_student==99}red{else}green{/if}-dark mb-n1 text-end">{if $ppdb_pesertaDidik[p].is_student==97}Dalam Proses{else if $ppdb_pesertaDidik[p].is_student==99}Gagal{else}Lulus{/if}</h5>
				<span class="color-theme d-block font-11 text-end">{$ppdb_pesertaDidik[p].created_at|date_format:"%e %B %Y"}</span>
			</div>
		</div>
		<div class="divider mt-3 mb-3"></div>
		{/section}

	</div>
</div>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		{$pages}
	</ul>
</nav>
{include file="footer.tpl"}
{literal}
<script>
function redirectToPhase(phase) {
	if(phase){
		window.location.href = '{/literal}{"?p=ppdb&hasil_seleksi"|surl}{literal}/phase_'+phase;
	}else{
		window.location.href = '{/literal}{"?p=ppdb&hasil_seleksi"|surl}{literal}';
	}
}
</script>
{/literal}