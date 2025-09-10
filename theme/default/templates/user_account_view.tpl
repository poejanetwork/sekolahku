{include file="header1.tpl"}
{if $account_view}
<div class="card card-style">
	<div class="content">
		<div class="d-flex">
			<div class="text-center">
				<img src='{$account_view.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block">
			</div>
			<div class="align-self-center ps-1 mx-auto w-100">
				<h5 class="mb-0 pt-1">{$account_view.fullname}</h5>
				<div class="font-11 mt-n0 color-highlight">{$lang.nisn}: {$account_view.nisn} 
					{if $account_view.editable}<a class="badge text-uppercase px-1 py-1 bg-blue-dark float-end" href='{"?p=account_edit&id={$account_view.id}"|surl}'>edit</a>{/if}
				</div>
			</div>
		</div>
	</div>
</div>

<div class="card card-style bg-theme pb-0">
	<div class="content" id="tab-group-2">
		<div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-teal-dark">
			<a href="#" data-active="" data-bs-toggle="collapse" data-bs-target="#data-identitas" class="bg-teal-dark no-click">Identitas</a>
			<a href="#" data-bs-toggle="collapse" data-bs-target="#data-profile">Profile</a>
			<a href="#" data-bs-toggle="collapse" data-bs-target="#data-ortu">{if $account_view.parents_type}Orang Tua{else}Wali{/if}</a>
			<a href="#" data-bs-toggle="collapse" data-bs-target="#data-lain" class="collapsed" aria-expanded="false">Lainnya</a>
		</div>
		<div class="clearfix mb-3"></div>
		<div data-bs-parent="#tab-group-2" class="collapse show" id="data-identitas">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Kelas</strong><a href="javascript:void(0)">{$account_view.class_name}</a><i class="fa fa-id-badge color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">NIS</strong><a href="javascript:void(0)">{$account_view.nis}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">NISN</strong><a href="javascript:void(0)">{$account_view.nisn}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="data-profile">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.religion}</strong><a href="javascript:void(0)">{$account_view.religion_id}</a><i class="fa fa-id-badge color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.sex}</strong><a href="javascript:void(0)">{if $account_view.sex=="L"}Laki-laki{else}Perempuan{/if}</a><i class="fa fa-venus-mars color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Tempat / Tanggal Lahir</strong><a href="javascript:void(0)">{$account_view.birthday_place} / {$account_view.birthday|date_format:"%e %B %Y"}</a><i class="fa fa-map-marker-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.email}</strong><a href="mailto:{$account_view.email}">{$account_view.email}</a><i class="fa fa-envelope color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.mobile_phone}</strong><a href="tel:{$account_view.phone}">{$account_view.phone}</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>

				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.weight}</strong><a href="javascript:void(0)">{$account_view.weight} Kg</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.height}</strong><a href="javascript:void(0)">{$account_view.height} Cm</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>

				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">Alamat</strong><a href="javascript:void(0)">{$account_view.address_user} RT.{$account_view.rt} RW.{$account_view.rw} Dusun {$account_view.sub_village} Desa {$account_view.village} Kec. {$account_view.sub_district} Kota/Kab. {$account_view.district} Kode Pos {$account_view.postal_code}</a><i class="fa fa-address-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="data-ortu">
			<div class="content m-0 mt-3">
				{if $account_view.parents_type}
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_father_name}</strong><a href="javascript:void(0)">{$account_view.parents_father_name}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.educations}</strong><a href="javascript:void(0)">{$account_view.parents_father_education_id}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_father_job}</strong><a href="javascript:void(0)">{$account_view.parents_father_employment_id}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_father_phone}</strong><a href="tel:{$account_view.parents_father_phone}">{$account_view.parents_father_phone}</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.number} {$lang.nik}</strong><a href="javascript:void(0)">{$account_view.parents_father_nik}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>

				<div class="divider my-3"></div>

				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_mother_name}</strong><a href="javascript:void(0)">{$account_view.parents_mother_name}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.educations}</strong><a href="javascript:void(0)">{$account_view.parents_mother_education_id}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_mother_job}</strong><a href="javascript:void(0)">{$account_view.parents_mother_employment_id}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.parents_mother_phone}</strong><a href="tel:{$account_view.parents_mother_phone}">{$account_view.parents_mother_phone}</a><i class="fa fa-phone color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.number} {$lang.nik}</strong><a href="javascript:void(0)">{$account_view.parents_mother_nik}</a><i class="fa fa-id-card-alt color-teal-dark opacity-75"></i></div>
				{else}
				{/if}
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.address_parents}</strong><a href="javascript:void(0)">{$account_view.address_parent}</a><i class="fa fa-address-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>
		<div data-bs-parent="#tab-group-2" class="collapse" id="data-lain">
			<div class="content m-0 mt-3">
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.special_treatment}</strong><a href="javascript:void(0)">{$account_view.special_treatment_id}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.residence}</strong><a href="javascript:void(0)">{$account_view.residence_id}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
				<div class="vcard-field lh-lg mt-1"><strong class="font-12 color-teal-dark">{$lang.transportation}</strong><a href="javascript:void(0)">{$account_view.transportation_id}</a><i class="fa fa-id-card color-teal-dark opacity-75"></i></div>
			</div>
		</div>

	</div>    
</div>

<a href='{"?p=exam_account&id={$account_view.id}"|surl}' class="alert me-3 ms-3 mb-4 rounded-s bg-blue-dark d-none" role="alert">
	<span class="alert-icon"><i class="fa fa-server font-18"></i></span>
	<h4 class="font-15 font-600 color-white">Ujian</h4>
	<strong class="alert-icon-text opacity-50">Lihat hasil ujian.</strong>
	<p class="float-end mt-n2 color-white opacity-30"><i class="fa fa-user"></i></p>
</a>

<div class="card card-style">
	<div class="content mb-0">
		<h3 class="float-start font-16"><i class="fa fa-trophy color-yellow-dark me-1"></i> {$lang.achievement}</h3>
		<div class="clearfix"></div>
		<p>
			Informasi riwayat terkait prestasi siswa.
		</p>
	{if $account_view.achievements|@count > 0}
  		{foreach $account_view.achievements as $ach}
		<a href='{"?p=news&read={$ach.news_id}"|surl}' class="d-flex">
			<div>
				<span class="icon icon-m bg-green-dark rounded-m shadow-xl"><i class="fa fa-trophy font-20 color-yellow-light"></i></span>
			</div>
			<div class="align-self-center ps-3">
				<h5 class="font-600 font-14 mb-n2">{$ach.title}</h5>
				<span class="color-theme font-11">Tahun: {$ach.year}</span>
			</div>
			
		</a>
		<div class="divider mt-3 mb-3"></div>
  		{/foreach}
	{else}
		<div class="divider mb-3"></div>
		<p class="mb-3">Belum ada prestasi yang tercatat.</p>
	{/if}
	</div>
</div>

<div class="card preload-img entered loaded" data-ll-status="loaded">
<div class="card-body">
	<div class="card rounded-m mb-0">
		<div class="content mb-0 mt-3">
			<div class="d-flex">
				<div class="pe-2 align-self-center text-center">
					<p class="font-600 color-highlight mb-0">NKP</p>
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
</div>
	<div class="card-overlay bg-highlight opacity-90"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>

<a href='{"?p=bukusaku&add&id&{$account_view.id}"|surl}' class="btn btn-l btn-icon bg-dark-dark rounded-s shadow-s btn-full btn-margins font-900 text-uppercase text-start"><i class="fa fa-plus text-center"></i> Tambah Pelanggaran</a>

<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">Riwayat NKP</h5>
	<div class="clearfix"></div>
		<p>
			Informasi riwayat terkait Nilai Kredit Pelanggaran (NKP) siswa.
		</p>
		{section name=p loop=$nkp_user}
		<div class="d-flex">
			<div>
				<a href="javascript:void(0)" class="icon icon-l {if $nkp_user[p].category==berat}bg-red-dark{else if $nkp_user[p].category==sedang}bg-yellow-dark{else}bg-brown-dark{/if} rounded-m shadow-xl" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pelanggaran {$nkp_user[p].category}"><i class="fa font-20">-{$nkp_user[p].point}</i></a>
			</div>
			<div class="align-self-center ps-3 flex-grow-1">
				<h5 class="font-400 font-14 mb-n2">{$nkp_user[p].description}</h5>
				<span class="color-highlight font-12">{if $nkp_user[p].notes}<i class="fa fa-arrow-right pe-1"></i>{$nkp_user[p].notes}{else}&nbsp;{/if}</span>
				<div class="color-gray-dark font-11 d-block text-end color-gray"><i class="fa fa-calendar pe-1 color-dark-dark"></i> {$nkp_user[p].created_at} <i class="fa fa-user px-1 color-dark-dark"></i> {$nkp_user[p].tfullname}</div>
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

{/if}
{include file="footer.tpl"}