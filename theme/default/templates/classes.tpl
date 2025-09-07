{include file="header1.tpl"}
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Daftar Kelas</h1>
		<p class="opacity-50 color-white mb-0">Seluruh kelas {$settings.sitename}</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>

{foreach from=$list_classes_by_level item=items key=key}
<div class="content mb-2">
    <h5 class="float-start font-16 font-500">{$lang.class} {$lang.level} {$key}</h5>
    <div class="clearfix"></div>
</div>
<div class="splide single-slider slider-no-arrows slider-no-dots homepage-slider splide--loop splide--ltr splide--draggable is-active mb-4" id="single-slider-{$key}" style="visibility: visible;">
    <div class="splide__track">
        <div class="splide__list">
            {foreach from=$items item=item}
            <div class="splide__slide">
                <div data-card-width="300" class="mx-3 rounded-l shadow-l">
                <div class="bg-theme rounded-m shadow-m p-3">
                    <p class="font-16 font-700 mb-1">{$item.class_name}</p>
                    <div class="w-100 align-self-center pb-3">
                        <h6 class="font-14 font-500"><i class="fa fa-flag color-yellow-dark pe-2 pt-2 font-13"></i> Walas<span class="float-end">{$item.teacher_name}</span></h6>
                        <div class="divider mb-2 mt-1"></div>
                        <h6 class="font-14 font-500"><i class="fa fa-users color-dark pe-2 pt-2 font-13"></i> Jumlah Siswa<span class="float-end">{$item.total_students} Orang</span></h6>
                    </div>
                    <div class="d-block">
                        <a href='{"?p=classes&{$item.id}"|surl}' class="btn bg-secondary btn-s text-uppercase font-900 rounded-s shadow-xl me-1">Detail</a>
                        {if $item.walas}<a href='{"?p=classes&{$item.id}&attendance"|surl}' class="btn bg-primary btn-s text-uppercase font-900 rounded-s shadow-xl">Presensi</a>{/if}
                        
                    </div>

                    </div>
                </div>
            </div>
            {/foreach}
        </div>
    </div>
</div>
{/foreach}

{include file="footer.tpl"}