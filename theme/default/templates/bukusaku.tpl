{include file="header1.tpl"}

<div class="card-body mb-n4">
	<div class="card rounded-m mt-n3 mb-0">
		<div class="content mb-0 mt-3">
			<div class="d-flex">
				<div class="pe-2 align-self-center text-center">
					<p class="font-600 color-highlight mb-0">NKP anda</p>
					<h1 class="mb-2">{$total_nkp} poin</h1>
				</div>
				<div class="w-100 align-self-center ps-2">
					{if $total_nkp>=$settings.nkp_sp1 && $total_nkp<$settings.nkp_sp2}
					<div class="alert alert-small rounded-s bg-yellow-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-exclamation-triangle font-18"></i></span>
						<h4 class="text-uppercase color-white">Anda sudah SP 1</h4>
					</div>
					{else if $total_nkp>=$settings.nkp_sp2}
					<div class="alert alert-small rounded-s bg-red-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-exclamation-triangle font-18"></i></span>
						<h4 class="text-uppercase color-white">Anda sudah SP 2</h4>
					</div>
					{else}
					<div class="alert alert-small rounded-s bg-green-dark" role="alert">
						<span class="alert-icon"><i class="fa fa-check font-18"></i></span>
						<h4 class="text-uppercase color-white">Belum ada SP</h4>
					</div>
					{/if}
				</div>
			</div>
		</div>    
	</div> 

	<div class="mt-3">
		<div class="alert alert-small rounded-s bg-white" role="alert">
			<div class="d-flex">
				<div class="pe-2 align-self-center text-center">
					<span class="rounded-s bg-blue-dark alert-icon" data-toast="toast-sp"><i class="fa fa-info-circle font-20"></i></span>
				</div>
				<div class="w-100 align-self-center ps-5">
					<h6 class="font-14 font-500">Surat Pemanggilan 1<strong class="float-end color-orange-dark">NKP {$settings.nkp_sp1}</strong></h6>
					<div class="divider mb-2 mt-1"></div>
					<h6 class="font-14 font-500">Surat Pemanggilan 2<strong class="float-end color-red-dark">NKP {$settings.nkp_sp2}</strong></h6>
				</div>
			</div>
		</div>
	</div>
	<div id="toast-sp" data-dismiss="toast-sp" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade hide">
        <span class="notification-icon color-white rounded-s">
            <i class="fa fa-info"></i>
            <em>Info</em>
            <i data-dismiss="toast-sp" class="fa fa-times-circle"></i>
        </span>
        <p class="pt-1">
            Batas poin untuk Surat Pemanggilan (SP).
        </p>
    </div>

	<div class="content mx-0">    
		<div class="row">
			<a href='{"?p=rules"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-shield-alt font-24 color-brown-dark"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">Peraturan</p>
				</div>
			</a>
			<a href='{"?p=notes"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-handshake font-24 color-green-dark"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">Catatan</p>
				</div>
			</a>
			<a href="javascript:void(0)" class="col-4" data-menu="menu-table-nkp">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-question font-24 color-orange-dark"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">Table NKP</p>
				</div>
			</a>
		</div>
	</div>
</div>

<div class="card card-style">
	<div class="content">
	<h5 class="font-16">Riwayat NKP</h5>
	<div class="clearfix"></div>
		<p>
			Informasi riwayat terkait Nilai Kredit Pelanggarn (NKP) siswa.
		</p>
		{section name=p loop=$nkp_user}
		<div class="d-flex">
			<div>
				<a href="javascript:void(0)" class="icon icon-l {if $nkp_user[p].category==berat}bg-red-dark{else if $nkp_user[p].category==sedang}bg-yellow-dark{else}bg-brown-dark{/if} rounded-m shadow-xl" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pelanggaran {$nkp_user[p].category}"><i class="fa font-20">-{$nkp_user[p].point}</i></a>
			</div>
			<div class="align-self-center ps-3 flex-grow-1">
				<h5 class="font-400 font-14 mb-n2">{$nkp_user[p].description}</h5>
				<span class="color-theme font-12"><i class="fa fa-arrow-right pe-1"></i> {if $nkp_user[p].description_other}{$nkp_user[p].description_other}{else}&nbsp;{/if}</span>
				<div class="color-gray-dark font-11 d-block text-end color-gray"><i class="fa fa-calendar pe-2"></i> {$nkp_user[p].created_at|date_format:"%e %B %Y"}</div>
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
<div id="menu-table-nkp" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="400" data-menu-effect="menu-over">
	<h2 class="text-start font-700 mt-3 mx-3">Tabel NKP</h2>
	<div id="tab-group-2">
		<div class="tab-controls tabs-small tabs-rounded mx-3" data-highlight="bg-red-dark">
			<a href="javascript:void(0)" data-active="" data-bs-toggle="collapse" data-bs-target="#tab-ringan" class="bg-red-dark no-click">Ringan</a>
			<a href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#tab-sedang">Sedang</a>
			<a href="javascript:void(0)" data-bs-toggle="collapse" data-bs-target="#tab-berat">Berat</a>
		</div>
		<div class="clearfix mb-3"></div>
		<div data-bs-parent="#tab-group-2" class="collapse show" id="tab-ringan">
			<table class="table table-borderless text-center shadow-l">
				<thead>
					<tr class="bg-gray-light">
						<th scope="col" class="color-theme py-3 font-14">Kegiatan</th>
						<th scope="col" class="color-theme py-3 font-14">Poin</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$table_nkp item=n}
					{if $n.category=="ringan"}
					<tr class="border-bottom">
						<th scope="row" class="text-start ps-3">{$n.description}</th>
						<td class="color-orange-light">{$n.point}</td>
					</tr>
					{/if}
					{/foreach}
				</tbody>
			</table>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="tab-sedang">
			<table class="table table-borderless text-center shadow-l">
				<thead>
					<tr class="bg-gray-light">
						<th scope="col" class="color-theme py-3 font-14">Kegiatan</th>
						<th scope="col" class="color-theme py-3 font-14">Poin</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$table_nkp item=n}
					{if $n.category=="sedang"}
					<tr class="border-bottom">
						<th scope="row" class="text-start ps-3">{$n.description}</th>
						<td class="color-orange-dark">{$n.point}</td>
					</tr>
					{/if}
					{/foreach}
				</tbody>
			</table>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="tab-berat">
			<table class="table table-borderless text-center shadow-l">
				<thead>
					<tr class="bg-gray-light">
						<th scope="col" class="color-theme py-3 font-14">Kegiatan</th>
						<th scope="col" class="color-theme py-3 font-14">Poin</th>
					</tr>
				</thead>
				<tbody>
					{foreach from=$table_nkp item=n}
					{if $n.category=="berat"}
					<tr class="border-bottom">
						<th scope="row" class="text-start ps-3">{$n.description}</th>
						<td class="color-red-dark">{$n.point}</td>
					</tr>
					{/if}
					{/foreach}
				</tbody>
			</table>
		</div>
	</div>
    <a href="#" class="close-menu btn btn-m btn-margins rounded-sm btn-full shadow-l bg-highlight text-uppercase font-900">Tutup</a>
</div>