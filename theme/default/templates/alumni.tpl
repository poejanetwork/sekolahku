{include file="header1.tpl"}
<div class="row text-center">
	<div class="col-12">
		<div class="card card-style mb-0">
			<div class="d-flex py-3 my-1">
				<div class="align-self-center px-3">
					<img src="{$settings.sitelogo}" class="ps-2 pe-1" width="50">
				</div>
				<div class="align-self-center">
					<h4 class="text-start color-theme font-600 font-17"> {$settings.sitename}</h4>
					<p class="text-start mt-n2 font-11 color-highlight mb-0">
						Kumpulan data alumni
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="card-body pt-0">
		{foreach from=$alumni item=n}
		<a href="#" class="card card-style mb-3 mx-0">
			<div class="d-flex ">
				<div class="mt-2">
					<h1 class="center-text">
						<img src="{$n.thumbnail}" data-src="{$n.thumbnail}" width="100" class="rounded-sm preload-img entered loaded" data-ll-status="loaded">
					</h1>
				</div>
				<div class="pt-1">
					<h4 class="color-theme font-600">{$n.name}</h4>
					<p class="mt-n2 font-12 color-highlight mb-0">
						{$n.instansi}
					</p>
					<h6 class="badge bg-red-dark font-12 font-600 text-center mb-0">Alumni {$n.graduation_year}</h6>
				</div>
				
			</div>
		</a>
		{/foreach}
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		{$pages}
	</ul>
</nav>
</div>
{include file="footer.tpl"}