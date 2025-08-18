{include file="header1.tpl"}

{if $newscat}
	{foreach from=$newscat item=nc}
	<a href='{"?p=news&{$nc.id}"|surl}'>
	<div class="card card-style" data-card-height="230">
		<div class="card-top">
			<span class="badge bg-highlight px-2 py-2 color-white m-3 float-end"><i class="fa fa-star pe-2 color-yellow-light"></i>{$nc.category}</span>
		</div>
		<div class="card-bottom bg-white p-3">
			<h4 class="font-500 font-16">
				{$nc.title}
			</h4>
			<span class="opacity-50 font-10">{$nc.created_at|date_format:"%e %B %Y, %H:%m:%s"}</span>
		</div>
		<img src="{$nc.thumbnail}" class="img-fluid">
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
		<span class="badge bg-highlight text-uppercase px-2 py-1">{$newsid.category|ucfirst}</span>
		<span class="d-block text-end font-10 pe-3 opacity-60 mt-n4 color-white">Image Source: {$settings.sitename}</span>
	</div>
	<div class="card-overlay bg-gradient"></div>
	<img class="card-bg owl-lazy" loading="lazy" src="{$newsid.thumbnail}">
</div>

<div class="card card-style">
	<div class="content">
		<h1 class="font-600 font-18 line-height-m">{$newsid.title}</h1>
		<span class="d-block mb-3">{$newsid.created_at}</span>
		<a href='https://www.facebook.com/sharer/sharer.php?u={$settings.siteurl}{"?p=news&{$newsid.id}"|surl}' class="shareToFacebook icon icon-xs rounded-sm bg-facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
		<a href='http://twitter.com/share?text={$newsid.title}%20{$settings.siteurl}{"?p=news&{$newsid.id}"|surl}' class="shareToTwitter icon icon-xs rounded-sm bg-twitter" target="_blank"><i class="fab fa-twitter"></i></a>
		<a href='whatsapp://send?text={$settings.siteurl}{"?p=news&{$newsid.id}"|surl}/{$newsid.slug}' class="shareToWhatsApp icon icon-xs rounded-sm bg-whatsapp" target="_blank"><i class="fab fa-whatsapp"></i></a>
		<a href='https://www.linkedin.com/shareArticle?mini=true&amp;url={$settings.siteurl}{"?p=news&{$newsid.id}"|surl}&amp;title={$newsid.title}&amp;summary=&amp;source=' class="shareToLinkedIn icon icon-xs rounded-sm bg-linkedin" target="_blank"><i class="fab fa-linkedin-in"></i></a>
		<a href='mailto:?body={$settings.siteurl}{"?p=news&{$newsid.id}"|surl}/{$newsid.slug}' class="shareToMail icon icon-xs rounded-sm bg-mail" target="_blank"><i class="fa fa-envelope"></i></a>
	</div>
	<div class="content">
		<p>
			{eval var=$newsid.full_text|nl2br}
		</p>
	</div>
</div>
{else}
<div class="card card-style">
	<div class="content mb-0">
		<h5 class="font-18 font-600 color-highlight pb-3">{$lang.news}</h5>
		{foreach from=$news item=n}
		<a href='{"?p=news&{$n.id}"|surl}'>
			<div class="d-flex mb-3">
				<div class="align-self-center">
					<h5 class="font-500 font-15 pb-1">{$n.title}</h5>
					<span class="badge text-uppercase px-2 py-1 bg-highlight">{$n.category|ucfirst}</span>
					<span class="color-theme font-11 ps-2 opacity-50">{$n.created_at}</span>
				</div>
				<div class="align-self-center ms-auto">
					<img src="{$n.thumbnail}" class="rounded-m ms-3" width="90">
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