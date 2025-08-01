{include file="header.tpl"}
<!-- Homepage Slider-->
<div class="splide single-slider slider-no-arrows slider-no-dots homepage-slider splide--loop splide--ltr splide--draggable is-active" id="single-slider-1" style="visibility: visible;">
    <div class="splide__track">
        <div class="splide__list">
            {foreach from=$news item=n}
            <div class="splide__slide">
                <div data-card-height="300" class="card mx-3 rounded-l shadow-l">
                    <div class="card-top">
                        <span class="badge bg-blue-dark text-uppercase p-2 rounded-s m-4">{$n.category}</span>
                    </div>
                    <div class="card-bottom px-3 mb-3">
                        <a href='{"?p=news&{$n.id}"|surl}'>
                            <h1 class="font-18 line-height-m color-white font-500 mb-0">
                                {$n.title}
                            </h1>
                        </a>
                    </div>
                    <div class="card-overlay bg-gradient"></div>
                    <img class="card-bg owl-lazy" loading="lazy" src="{$n.thumbnail}">
                </div>
            </div>
            {/foreach}
        </div>
    </div>
</div>

<div class="content mb-2">
    <h5 class="float-left font-16 font-500">Kenapa Kami?</h5>
    <div class="clearfix"></div>
</div>

<div class="splide double-slider visible-slider slider-no-arrows slider-no-dots splide--loop splide--ltr splide--draggable is-active" id="double-slider-1" style="visibility: visible;">
    <div class="splide__track">
        <div class="splide__list">
            <div class="splide__slide ps-3">
                <div class="bg-theme rounded-m shadow-m text-center">
                    <i class="mt-4 mb-4" data-feather="shield" data-feather-line="1" data-feather-size="45" data-feather-color="blue-dark" data-feather-bg="blue-fade-light"></i>
                    <h5 class="font-16">Disiplin</h5>
                    <p class="line-height-s font-11 pb-4 mx-3 text-justify">
                        Siswa dididik menjadi calon kader yang memiliki kesiapan mental & fisik serta disiplin
                    </p>
                </div>
            </div>
            <div class="splide__slide ps-3">
                <div class="bg-theme rounded-m shadow-m text-center">
                    <i class="mt-4 mb-4" data-feather="check-circle" data-feather-line="1" data-feather-size="45" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-light"></i>
                    <h5 class="font-16">Multi Talenta</h5>
                    <p class="line-height-s font-11 pb-4 mx-3 text-justify">
                        Mampu mengembangkan kemampuan agar memiliki banyak talenta
                    </p>
                </div>
            </div>
            <div class="splide__slide ps-3">
                <div class="bg-theme rounded-m shadow-m text-center">
                    <i class="mt-4 mb-4" data-feather="command" data-feather-line="1" data-feather-size="45" data-feather-color="brown-dark" data-feather-bg="brown-fade-light"></i>
                    <h5 class="font-16">Leadership</h5>
                    <p class="line-height-s font-11 pb-4 mx-3 text-justify">
                        Membentuk siswa yang memiliki kemampuan mengontrol diri sendiri
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card preload-img entered loaded" data-ll-status="loaded">
    <div class="card-body">
        <h4 class="color-white mb-3">Statistik</h4>
        <div class="card card-style ms-0 me-0 mb-2 bg-theme">
            <div class="row mt-3 pt-1 mb-3">
                <div class="col-6">
                    <i class="float-start ms-3 me-2" data-feather="users" data-feather-line="1" data-feather-size="45" data-feather-color="blue-dark" data-feather-bg="blue-fade-light"></i>
                    <h5 class="color-theme float-start font-13 font-500 line-height-s pb-3 mb-3">Pengajar<br>{$stats.teachers}</h5>
                </div>
                <div class="col-6">
                    <i class="float-start ms-3 me-2" data-feather="user" data-feather-line="1" data-feather-size="45" data-feather-color="brown-dark" data-feather-bg="brown-fade-light"></i>
                    <h5 class="color-theme float-start font-13 font-500 line-height-s pb-3 mb-3">Siswa<br>{$stats.siswa}</h5>
                </div>
                <div class="col-6">
                    <i class="float-start ms-3 me-2" data-feather="award" data-feather-line="1" data-feather-size="45" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-light"></i>
                    <h5 class="color-theme float-start font-13 font-500 line-height-s">Prestasi<br>{$stats.prestasi}</h5>
                </div>
                <div class="col-6">
                    <i class="float-start ms-3 me-2" data-feather="dribbble" data-feather-line="1" data-feather-size="45" data-feather-color="green-dark" data-feather-bg="green-fade-light"></i>
                    <h5 class="color-theme float-start font-13 font-500 line-height-s">Ekskul<br>7</h5>
                </div>
            
            </div>
        </div>
    </div>
    <div class="card-overlay bg-highlight opacity-90"></div>
    <div class="card-overlay dark-mode-tint"></div>
</div>

<div data-card-height="180" class="card card-style card-scale round-medium shadow-large">
    <img src="{$settings.sitelogo}" class="card-image">
    <div class="card-center ms-3">
		<div class="d-flex">
			<div>
				<img src="{$settings.sitelogo}" width="50" class="me-3">
			</div>
			<div>
				<h2 class="mb-0 pt-1 color-white">{$settings.sitename}</h2>
				<p class="color-grass-light font-11 mt-n1 mb-3">Tentang Sekolah</p>
			</div>
		</div>
		<p class="color-white">
			<i class="fa fa-map-marker-alt color-white"></i> {$settings.school_address}
		</p>
    </div> 
    <div class="card-bottom m-3">
        <a href="{$settings.sitemaps}" class="float-end bg-highlight btn btn-xs text-uppercase font-900 rounded-xl font-11 ms-2" target="_blank"><i class="fa fa-map-marker-alt me-2"></i> Lokasi</a>
        <a href="javascript:void(0)" class="float-end bg-highlight btn btn-xs text-uppercase font-900 rounded-xl font-11" data-menu="menu-video"><i class="fa fa-video me-2"></i> Intro</a>
    </div>
    <div class="card-overlay bg-black opacity-70"></div>
</div>

<div class="card card-style preload-img entered loaded" data-card-height="350" data-ll-status="loaded">
    <div class="card-center text-center">
        <p class="line-height-xl font-19 font-300 color-white ps-3 pe-3 mb-2">
            Assalamualaikum Warahmatullah Wabarakatuh. Kami selaku pimpinan sekolah mengucapkan selamat datang dan selamat belajar bagi seluruh peserta didik.
        </p>
        <p class="opacity-50 color-white">Huzeir Zul, S.E., M.Pd</p>
        <a href="javascript:void(0)" class="btn btn-m rounded-s btn-border color-white border-white text-uppercase font-900">Baca selengkapnya</a>
    </div>
    <div class="card-overlay bg-highlight opacity-90"></div>
</div>
{include file="footer.tpl"}

<div id="menu-video" class="menu menu-box-modal rounded-m"
        data-menu-height="430">
    <div class='responsive-iframe max-iframe'>
        <iframe src="https://www.youtube.com/embed/WJdW9pHH8AU" frameborder="0" allowfullscreen=""></iframe>
    </div>
    <h3 class="text-center font-700 mt-3 d-none">Video</h3>
    <p class="p-1 mb-1 text-justify">
        {$settings.school_description}
    </p>
    <a href="javascript:void(0)" class="btn btn-center-xl btn-sm shadow-l rounded-s text-uppercase font-900 bg-green-dark">YAYASAN TARUNA MANDIRI PEKANBARU</a>
</div> 