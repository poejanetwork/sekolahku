{include file="header1.tpl"}

{if $settings.use_tfa && !$user.gauth_status}
<div id="notification-3" data-dismiss="notification-3" data-delay="3000" data-autohide="true"  class="notification notification-material bg-dark-dark fade show">
<span class="notification-icon">
	<i class="fa fa-bell color-green-light"></i>
	<em class="color-green-light">Notifikasi</em>
</span>
<i class="fa fa-times-circle font-30 float-right mr-5 mt-3"></i>
<h1 class="font-15 color-white">Autentifikasi!</h1>
<p class="pb-1">
	Untuk keamanan tingkat lanjut, mohon aktifkan autentifikasi tambahan <a href='{"?p=security"|surl}'>disini</a>.
</p>
</div>
{/if}

{if $settings.notif_use_telegram && $user.telegram_chat_id==""}
<div id="notification-3" data-dismiss="notification-3" data-delay="3000" data-autohide="true"  class="notification notification-material bg-dark1-dark fade show">
<span class="notification-icon">
	<i class="fa fa-bell color-green1-light"></i>
	<em class="color-green1-light">Notifikasi</em>
</span>
<i class="fa fa-times-circle font-30 float-right mr-5 mt-3"></i>
<h1 class="font-15 color-white">Telegram</h1>
<p class="pb-1">
	Untuk mengaktifkan notifikasi telegram anda, silakan tambahkan <a href='{"?p=edit_account"|surl}'>Telegram</a>.
</p>
</div>
{/if}
<div class="card bg-smataryellow mt-4 content rounded-m shadowl">
	<div class="card-body">
		<h4 class="color-white">Kartu Tanda Pengajar</h4>

	<div class="content m-0 mt-3">
		<div class="vcard-field lh-lg mt-1"><strong class="font-12 text-white">NIP</strong><a href="javascript:void(0)">{$user.nip}</a><i class="fa fa-id-card color-white opacity-75"></i></div>
		<div class="vcard-field lh-lg mt-1"><strong class="font-12 text-white">{$lang.fullname}</strong><a href="javascript:void(0)">{$user.fullname}</a><i class="fa fa-user color-white opacity-75"></i></div>
		<div class="vcard-field lh-lg mt-1"><strong class="font-12 text-white">Tempat/Tanggal Lahir</strong><a href="javascript:void(0)">{$user.birthday_place} / {$user.birthday|date_format:"%e %B %Y"}</a><i class="fa fa-map-marker-alt color-white opacity-75"></i></div>
		<div class="vcard-field lh-lg mt-1 border-0"><strong class="font-12 text-white">Phone</strong><a href="tel:{$user.phone}">+{$user.phone}</a><i class="fa fa-phone color-white opacity-75"></i></div>
	</div>

	</div>
	<div class="card-overlay gradient-brown opacity-95 rounded-m shadow-l"></div>
	<div class="card-overlay dark-mode-tint rounded-m shadow-l"></div>
</div> 
<div class="content mb-2">
<div class="bg-highlight p-2 rounded-m position-relative">
	<div class="search-box search-dark shadow-m border-0 mt-0 bg-theme rounded-m bottom-0">
		<i class="fa fa-search ms-n2 color-highlight"></i>
		<input type="text" class="border-0" placeholder="Cari nama siswa" data-search="" data-geturl="{$settings.siteurl}/index.php/status/postback/students">
	</div>
	<div class="search-results disabled-search-list shadow-xl rounded-m mt-3"></div>
	<div class="search-no-results disabled">
		<p class="my-1 mx-2 color-white">Data siswa tidak ditemukan</p>
	</div>
</div>
</div>

<div class="content px-0 card-body py-0">
	<div class="content m-0">
	    
		<div class="row">
			<a href='{"?p=rules"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-shield-alt font-24 color-brown-dark opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.rules}</p>
				</div>
			</a>
			<a href='{"?p=classes"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-school font-24 color-teal-dark opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.class}</p>
				</div>
			</a>
			<a href='{"?p=bukusaku"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-book font-24 text-success opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.bukusaku}</p>
				</div>
			</a>
		</div>
		<div class="row">
			<a href='{"?p=library"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-book-reader color-yellow-dark font-24 opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.libraries}</p>
				</div>
			</a>
			<a href='{"?p=schedule"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-calendar-alt font-24 color-blue-dark opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.schedule}</p>
				</div>
			</a>
			<a href='{"?p=notes"|surl}' class="col-4">
				<div class="card card-style text-center py-3 mx-0 mb-0">
					<i class="fa fa-handshake font-24 color-green-dark opacity-60"></i>
					<p class="font-13 font-500 mb-n1 mt-2 color-theme">{$lang.notes}</p>
				</div>
			</a>
		</div>
		
	</div>
</div>

<div class="card card-style">
	<div class="content" data-menu="menu-video">
		<div class="d-flex">
			<div>
				<img src="{$settings.siteurl}/{$theme}/assets/images/icons/logo.png" width="50" class="me-3">
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$settings.sitename}</h2>
				<p class="color-highlight font-11 mt-n1 mb-3">Tentang Sekolah</p>
			</div>
		</div>
		<p>
			<i class="fa fa-map-marker-alt"></i> {$settings.school_address}
		</p>
	</div>
</div>
        
<div class="card-body py-0 d-none">
	<div class="content m-0">
	    
        <div class="d-flex">
            <div>
                <p class="mb-n1 font-10">Our Company Ratings</p>
                <h6 class="float-left">4.9</h6>
                <i class="float-left color-yellow1-dark pt-1 pl-2 fa fa-star"></i>
                <i class="float-left color-yellow1-dark pt-1 fa fa-star"></i>
                <i class="float-left color-yellow1-dark pt-1 fa fa-star"></i>
                <i class="float-left color-yellow1-dark pt-1 fa fa-star"></i>
                <i class="float-left color-yellow1-dark pt-1 fa fa-star"></i>
            </div>
            <div class="ml-auto">
                <a class="icon icon-s mt-2 mr-2 rounded-m bg-red2-dark color-white" href="#" data-menu="menu-video"><i class="fa fa-video"></i></a>
                <a data-menu="menu-tips-1" class="icon icon-s mt-2 rounded-m bg-highlight color-white" href="#"><i class="fa fa-images"></i></a>
            </div>
        </div>
		
	</div>
</div>

<div class="card card-style">
	<div class="content">
	<h5 class="float-left font-16">Riwayat Aktifitas</h5>
	<div class="clearfix"></div>
		<p class="mb-0">
			Informasi terkait aktifitas akun anda.
		</p>
	<div class="list-group list-custom-large">
		{foreach from=$account_log item=p}
			<a href="javascript:void(0)">
				<i class="fa font-18 fa-calendar color-brown-dark"></i>
				<span>Akses Masuk</span>
				<strong>{$p.adate|date_format:"%e %B %Y %H:%M:%S"}</strong>
				<span class="badge bg-blue-dark">{$p.ip}</span>
			</a>
		{/foreach}
	</div>
						
	</div>
</div>


{include file="footer.tpl"}

        <div id="menu-video" class="menu menu-box-modal rounded-m"
             data-menu-height="450">
            <div class='responsive-iframe max-iframe'>
				<iframe src="https://www.youtube.com/embed/WJdW9pHH8AU" frameborder="0" allowfullscreen=""></iframe>
            </div>
            <h3 class="text-center font-700 mt-3 d-none">Video</h3>
            <p class="p-1 mb-1 text-justify">
                {$settings.school_description}
            </p>
            <a href="javascript:void(0)" class="btn btn-center-xl btn-sm shadow-l rounded-s text-uppercase font-900 bg-green-dark">YAYASAN TARUNA MANDIRI PEKANBARU</a>
        </div>  
    
		<div id="menu-visi" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="350" data-menu-effect="menu-over">

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
	
	<div id="menu-misi" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="360" data-menu-effect="menu-over" style="display: block; height: 360px;">

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