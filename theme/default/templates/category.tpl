{include file="header1.tpl"}
	<div class="mb-3">
			<div class="row text-center mb-0">
				<a href="#" class="col-12">
					<div class="card card-style mb-0">
						<div class="d-flex py-3 my-1">
							<div class="align-self-center px-3">
								<img data-src="{$settings.sitelogo}" class="preload-img ps-2 pe-1" width="50">
							</div>
							<div class="align-self-center">
								<h4 class="text-start color-theme font-600 font-17"> {$settings.sitename}</h4>
								<p class="text-start mt-n2 font-11 color-highlight mb-0">
									{$settings.sitemotto}
								</p>
							</div>
						</div>
					</div>
				</a>
			</div>

			<div class="mt-2">
				<a href='{"?p=profil"|surl}' class="card card-style mb-2 d-flex" data-card-height="50">
					<div class="d-flex justify-content-between">
						<div class="ps-3 ms-1 align-self-center">
							<h4 class="font-600 mb-0 mt-1">Profil</h4>
							<p class="color-highlight mt-n1 font-11 mb-0">
								Tentang sejarah sekolah
							</p>
						</div>
						<div class="pe-3 align-self-center">
							<i data-feather="book-open" data-feather-line="1" data-feather-size="24" data-feather-color="sunny-dark" data-feather-bg="sunny-fade-light"></i>
						</div>
					</div>
				</a>
				<a href='javascript:void(0)' data-menu="menu-visi" class="card card-style mb-2 d-flex" data-card-height="50">
					<div class="d-flex justify-content-between">
						<div class="ps-3 ms-1 align-self-center">
							<h4 class="font-600 mb-0 mt-1">Target</h4>
							<p class="color-highlight mt-n1 font-11 mb-0">
								Visi dan Misi
							</p>
						</div>
						<div class="pe-3 align-self-center">
							<i data-feather="target" data-feather-line="1" data-feather-size="24" data-feather-color="sunny-dark" data-feather-bg="sunny-fade-light"></i>
						</div>
					</div>
				</a>
			</div>
<!--	<div class="mb-0">
		<button class="btn accordion-btn no-effect color-theme" data-bs-toggle="collapse" data-bs-target="#collapse2">
			<i class="fa fa-star color-yellow-dark me-2"></i>
			Accordion Title 2
			<i class="fa fa-chevron-down font-10 accordion-icon"></i>
		</button>
		<div id="collapse2" class="collapse" data-bs-parent="#accordion-1">
			<div class="pt-1 pb-2 ps-3 pe-3">
				<p>This is the accordion content. You can add any content you want to it. Really, anything! Add images, text, lists, captions or any element you want.</p>
			</div>
		</div>
	</div>
-->
</div>

<div class="row text-center mt-3 mb-0">
	<a href='{"?p=teachers"|surl}' class="col-6 pe-2">
		<div class="card card-style me-0 mb-3">
			<h1 class="center-text pt-3 mt-3 mb-3">
				<i class="fa fa-chalkboard-teacher color-grass-dark font-50"></i>
			</h1>
			<h4 class="color-theme font-600">Pengajar</h4>
			<p class="mt-n2 font-11 color-highlight mb-3">
				Data Guru, Staff & Karyawan
			</p>
			<p class="font-10 opacity-30 mb-1">Klik untuk melihat</p>
		</div>
	</a>
	<a href='{"?p=news&category&prestasi"|surl}' class="col-6 ps-2">
		<div class="card card-style ms-0 mb-3">
			<h1 class="center-text pt-3 mt-3 mb-3">
				<i class="fa fa-award color-blue-dark font-50"></i>
			</h1>
			<h4 class="color-theme font-600">Prestasi</h4>
			<p class="mt-n2 font-11 color-highlight mb-3">
				Siswa bertalenta
			</p>
			<p class="font-10 opacity-30 mb-1">Klik untuk melihat</p>
		</div>
	</a>
</div>
<div class="row text-center">
	<a href='{"?p=alumni"|surl}' class="col-6 pe-2">
		<div class="card card-style me-0 mb-3">
			<h1 class="center-text pt-3 mt-3 mb-3">
				<i class="fa fa-outdent color-brown-dark font-50"></i>
			</h1>
			<h4 class="color-theme font-600">Alumni</h4>
			<p class="mt-n2 font-11 color-highlight mb-3">
				Mantan siswa
			</p>
			<p class="font-10 opacity-30 mb-1">Klik untuk melihat</p>
		</div>
	</a>
	<a href='#' class="col-6 ps-2">
		<div class="card card-style ms-0 mb-3">
			<h1 class="center-text pt-3 mt-3 mb-3">
				<i class="fa fa-outdent color-gray-dark font-50"></i>
			</h1>
			<h4 class="color-theme font-600">Reserved</h4>
			<p class="mt-n2 font-11 color-highlight mb-3">
				Reserved
			</p>
			<p class="font-10 opacity-30 mb-1">Klik untuk melihat</p>
		</div>
	</a>
</div>

{include file="footer.tpl"}

<div id="menu-visi" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="550" data-menu-effect="menu-over">

<div class="card header-card shape-rounded" data-card-height="200">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>

<div class="mt-3">
	<h1 class="text-center">
		<i data-feather="award" data-feather-line="1" data-feather-size="55" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-light"></i>
	</h1>
	<h1 class="text-center color-white font-22 font-700">Visi</h1>
</div>
<div class="card card-style mb-2">
	<p class="boxed-text-xl pt-3 mb-0 text-justify">
		Menjadi Sekolah berkarakter terkemuka dalam membentuk kader pemimpin bangsa berwawasan kebangsaan, kebudayaan, kemandirian yang berdaya saing dalam bidang ilmu pengetahuan, teknologi dan keterampilan dalam kerangka iman dan taqwa
	</p>
</div>
<div class="row mb-0 justify-content-center mb-3">
	<div class="col-6">
		<a data-menu="menu-misi" href="javascript:void(0)" class="btn btn-sm me-3 rounded-s btn-full shadow-l bg-highlight font-900 text-uppercase">Misi <i class="fa fa-arrow-right ms-2"></i></a>
	</div>
</div>
</div>

<div id="menu-misi" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="550" data-menu-effect="menu-over">

<div class="card header-card shape-rounded" data-card-height="200">
	<div class="card-overlay bg-highlight opacity-95"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>

<div class="mt-3">
	<h1 class="text-center">
		<i data-feather="pocket" data-feather-line="1" data-feather-size="55" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-light"></i>
	</h1>
	<h1 class="text-center color-white font-22 font-700">Misi</h1>
</div>
<div class="card card-style mb-2">
	<p class="boxed-text-xl pt-3 mb-0 text-justify">
		<strong>1.</strong>	Mempersiapkan lulusan berjiwa kepemimpinan yang beriman dan taqwa.<br/>
		<strong>2.</strong>	Mempersiapkan lulusan yang berkarakter, mandiri dan berbudaya.<br/>
		<strong>3.</strong>	Mempersiapkan lulusan yang memiliki kecintaan terhadap bangsa dan NKRI berdasarkan Pancasila dan UUD 1945.<br/>
		<strong>4.</strong>	Meningkatkan kualitas lulusan dibidang akademik, kepribadian dan kesamaptaan jasmani, terampil dalam iptek yang memiliki daya saing global.<br/>
		<strong>5.</strong>	Meningkatkan Kompetensi pendidikan dan tenaga pendidik untuk optimalisasi pelayanan publik. 

	</p>
</div>
<a href="#" class="close-menu btn btn-m btn-margins rounded-sm btn-full shadow-l bg-highlight text-uppercase font-900">Tutup</a>
</div>