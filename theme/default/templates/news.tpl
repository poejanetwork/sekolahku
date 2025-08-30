{include file="header1.tpl"}

{if $newscat}
	{foreach from=$newscat item=nc}
	<a href='{"?p=news&read={$nc.id}"|surl}'>
	<div class="card card-style" data-card-height="230">
		<div class="card-top">
			<span class="badge bg-highlight px-2 py-2 color-white m-3 float-end">{if $nc.category=="prestasi"}<i class="fa fa-star color-yellow-dark me-1"></i>{else}<i class="fa fa-tags me-1"></i>{/if} {$nc.category}</span>
		</div>
		<div class="card-bottom bg-white p-3">
			<h4 class="font-500 font-16">
				{$nc.title}
			</h4>
			<span class="opacity-50 font-10">{$nc.created_at|date_format:"%e %B %Y, %H:%m:%s"}</span>
		</div>
		<img data-src="{$nc.thumbnail}" class="preload-img img-fluid">
	</div>
	</a>
	{/foreach}
	<nav aria-label="pagination-page">
		<ul class="pagination pagination- justify-content-center">
			{$pages}
		</ul>
	</nav>
{else if $newsid}
<div class="card card-style rounded-l bg-14 mb-n5" data-card-height="350">
	<div class="card-bottom p-3 pb-5 mb-3">
		<span class="badge bg-highlight text-uppercase px-2 py-1">{if $newsid.category=="prestasi"}<i class="fa fa-star color-yellow-dark me-1"></i>{else}<i class="fa fa-tags me-1"></i>{/if} {$newsid.category|ucfirst}</span>
		<span class="d-block text-end font-10 pe-3 opacity-60 mt-n4 color-white">Image Source: {$settings.sitename}</span>
	</div>
	<div class="card-overlay bg-gradient"></div>
	<img class="preload-img card-bg owl-lazy" loading="lazy" data-src="{$newsid.thumbnail}">
</div>

<div class="card card-style">
	<div class="content">
		<h1 class="font-600 font-18 line-height-m">{$newsid.title}</h1>
		<span class="d-block mb-3">{$newsid.created_at}</span>
		<a href='https://www.facebook.com/sharer/sharer.php?u={$settings.siteurl}{"?p=news&read={$newsid.id}"|surl}/{$newsid.slug}' class="shareToFacebook icon icon-xs rounded-sm bg-facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
		<a href='http://twitter.com/share?text={$newsid.title}%20{$settings.siteurl}{"?p=news&read={$newsid.id}"|surl}/{$newsid.slug}' class="shareToTwitter icon icon-xs rounded-sm bg-twitter" target="_blank"><i class="fab fa-twitter"></i></a>
		<a href='whatsapp://send?text={$settings.siteurl}{"?p=news&read={$newsid.id}"|surl}/{$newsid.slug}' class="shareToWhatsApp icon icon-xs rounded-sm bg-whatsapp" target="_blank"><i class="fab fa-whatsapp"></i></a>
		<a href='https://www.linkedin.com/shareArticle?mini=true&amp;url={$settings.siteurl}{"?p=news&read={$newsid.id}"|surl}/{$newsid.slug}&amp;title={$newsid.title}&amp;summary=&amp;source=' class="shareToLinkedIn icon icon-xs rounded-sm bg-linkedin" target="_blank"><i class="fab fa-linkedin-in"></i></a>
		<a href='mailto:?body={$settings.siteurl}{"?p=news&read={$newsid.id}"|surl}/{$newsid.slug}' class="shareToMail icon icon-xs rounded-sm bg-mail" target="_blank"><i class="fa fa-envelope"></i></a>
	</div>
	<div class="content">
		<p>
			{eval var=$newsid.full_text|nl2br}
		</p>
	</div>
</div>

{if $newsid.category=="prestasi"}
<div class="card mb-0">
	<div class="card-body">
		<h2 class="color-white font-600 mb-3 text-center">Nama-nama siswa berprestasi</h2>
<div class="splide single-slider slider-no-arrows slider-no-dots homepage-slider splide--loop splide--ltr splide--draggable is-active" id="single-slider-1" style="visibility: visible;">
    <div class="splide__track">
        <div class="splide__list">
            {foreach from=$newsid.student_ids item=sids}
            <div class="splide__slide">
				<div class="card rounded-m mx-3">
					<div class="content m-2">
						<div class="d-flex">
							<div class="px-2">
								<img loading="lazy" data-src="{$sids.avatar}" width="50" class="preload-img rounded-m">
							</div>
							<div class="ms-autos">
								<span class="color-dark font-10 mb-n1 d-block opacity-50">Nama Siswa</span>
								<h4 class="color-dark font-15 font-500">{$sids.fullname}</h4>
							</div>
						</div>
					</div>
				</div>
            </div>
            {/foreach}
        </div>
    </div>
</div>
	</div>

	<div class="card-overlay rounded-0 bg-highlight opacity-95"></div>
	<div class="card-overlay rounded-0 dark-mode-tint"></div>
</div>
{/if}
{else}
<div class="card card-style">
	<div class="content mb-0">
		<h5 class="font-18 font-600 color-highlight pb-3">{$lang.news}</h5>
		{foreach from=$news item=n key=key}
		<a href='{"?p=news&read={$n.id}"|surl}'>
			<div class="d-flex mb-3">
				<div class="align-self-center">
					<h5 class="font-500 font-15 pb-1">{$n.title}</h5>
					<span class="badge text-uppercase px-2 py-1 bg-highlight">{if $n.category=="prestasi"}<i class="fa fa-star color-yellow-dark me-1"></i>{else}<i class="fa fa-tags me-1"></i>{/if} {$n.category|ucfirst}</span>
					<span class="color-theme font-11 ps-2 opacity-50">{$n.created_at}</span>
				</div>
				<div class="align-self-center ms-auto">
					<img data-src="{$n.thumbnail}" class="preload-img rounded-m ms-3" width="90">
				</div>
			</div>
		</a>
		<div class="divider mb-3"></div>
		{/foreach}
	</div>
</div>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		{$pages}
	</ul>
</nav>
{/if}
{include file="footer.tpl"}