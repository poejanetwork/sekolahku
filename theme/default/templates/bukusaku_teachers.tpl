{include file="header1.tpl"}

<div class="bg-dark-dark p-2 rounded-s content mb-3">
<div class="rounded-m position-relative">
	<div class="search-box search-dark shadow-m border-0 mt-0 bg-theme rounded-m bottom-0">
		<i class="fa fa-search ms-n2 color-highlight"></i>
		<input type="text" class="border-0" placeholder="Cari nama siswa" data-search="" data-geturl="{$settings.siteurl}/index.php/status/postback/students">
	</div>
	<div class="search-results disabled-search-list shadow-xl rounded-m mt-2"></div>
	<div class="search-no-results shadow-xl rounded-m mt-2 disabled">
		<p class="card card-style mx-1 px-3 mt-1 mb-0 shadow-0">Data siswa tidak ditemukan</p>
	</div>
</div>
</div>

<a href='{"?p=bukusaku&add"|surl}' class="btn btn-l btn-icon bg-dark-dark rounded-s shadow-s btn-full btn-margins font-900 text-uppercase text-start mb-2"><i class="fa fa-plus text-center"></i> Tambah Pelanggaran</a>

<div class="card-body">
{if $list_pelanggaran}
{section name=p loop=$list_pelanggaran}
<div class="bg-white p-1 rounded-m mb-3 border-start {if $list_pelanggaran[p].category=="berat"}border-danger{else if $list_pelanggaran[p].category=="sedang"}border-warning{else}border-secondary{/if} border-3">
	<div class="content mb-2 mt-3">
		<div class="d-flex">
			<div class="w-100 align-self-center">
				<h6 class="font-14 font-500">{$lang.offender}<span class="float-end color-dark-dark">{$list_pelanggaran[p].nisn}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 font-500">{$lang.teachers}<span class="float-end color-dark-dark">{$list_pelanggaran[p].nip}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 font-500">{$lang.date}<span class="float-end color-gray-dark">{$list_pelanggaran[p].created_at|date_format:"%e %B %Y"}</span></h6>
			</div>
		</div>      
		<div class="divider mt-2 mb-3"></div>

		<div class="d-flex">
			<div>
				<a href="javascript:void(0)" class="icon icon-m bg-red-dark rounded-m shadow-xl"><i class="fa font-20">-{$list_pelanggaran[p].point}</i></a>
			</div>
			<div class="align-self-center ps-3">
				<h5 class="font-600 font-14 mb-n2">{$list_pelanggaran[p].description}</h5>
				<span class="color-theme font-11">{$lang.category}: {$list_pelanggaran[p].category|strtoupper}</span>
			</div>
		</div>

	</div>            
</div>
{/section}
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		{$pages}
	</ul>
</nav>
{/if}
</div>
{include file="footer.tpl"}
