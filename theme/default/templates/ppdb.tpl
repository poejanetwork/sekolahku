{include file="header1.tpl"}
{if $ppdb_settings.status}
<a href='{"?p=ppdb&daftar_baru"|surl}' data-card-height="80" class="card card-style mb-3">
	<div class="card-center">
		<h5 class="ps-3">Formulir PPDB</h5>
		<p class="ps-3 mt-n2 font-12 color-highlight mb-0">Pendaftaran siswa baru Gel. {$ppdb_settings.gelombang} TA {$ppdb_settings.tahun_ajaran}</p>
	</div>
	<div class="card-center opacity-30">
		<i class="fa fa-list opacity-80 float-end color-theme pe-3 font-20"></i>
	</div>
</a>
{/if}
<a href='{"?p=ppdb&hasil_seleksi"|surl}' data-card-height="80" class="card card-style mb-3">
	<div class="card-center">
		<h5 class="ps-3">Hasil Seleksi PPDB</h5>
		<p class="ps-3 mt-n2 font-12 color-highlight mb-0">Informasi hasil seleksi TA {$ppdb_settings.tahun_ajaran}</p>
	</div>
	<div class="card-center opacity-30">
		<i class="fa fa-bullhorn opacity-80 float-end color-theme pe-3 font-20"></i>
	</div>
</a>
<a href='{"?p=ppdb&cetak_formulir"|surl}' data-card-height="80" class="card card-style mb-5">
	<div class="card-center">
		<h5 class="ps-3">Cetak Formulir PPDB</h5>
		<p class="ps-3 mt-n2 font-12 color-highlight mb-0">Klik untuk mencetak formulir anda</p>
	</div>
	<div class="card-center opacity-30">
		<i class="fa fa-print opacity-80 float-end color-theme pe-3 font-20"></i>
	</div>
</a>
{include file="footer.tpl"}