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
						Kumpulan gallery
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row g-0 text-center">
	{foreach from=$gallery item=g}
	<div class="col-6 mb-3">
		<div class="card card-style mb-0" data-card-height="185">
			<div class="card-bottom bg-white m-2 p-1 rounded-s">
				<h5 class="font-500 font-14 mb-n1">
					{$g.name}
				</h5>
			</div>
			<div class="card-overlay bg-black opacity-30"></div>
		<img src="{$g.thumbnail}" class="card-image card-scale-image">
		</div>
	</div>
	{/foreach}
</div>
{include file="footer.tpl"}