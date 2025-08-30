{include file="header1.tpl"}
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Daftar Pengajar</h1>
		<p class="opacity-50 color-white mb-0">Guru-guru hebat {$settings.sitename}</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>
{foreach from=$allTeachers item=n}
<div class="card card-style mb-3">
	<div class="content">
		<div class="d-flex">
			<div>
				<img data-src="{$n.avatar}" width="50" class="preload-img me-3 bg-highlight rounded-xl">
			</div>
			<div>
				<h3 class="mb-0 pt-1">{$n.fullname}</h3>
				<p class="color-highlight text-uppercase font-11 mt-n1">{$n.major_name}</p>
			</div>
		</div>
	</div>
</div>
{/foreach}
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		{$pages}
	</ul>
</nav>
{include file="footer.tpl"}