{include file="header1.tpl"}
<div id="process" class="card card-style text-center">
	<div class="content py-5">
		<h1><i class="fa fa-spinner fa-spin fa-pulse color-dark-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Memproses</h3>
		<h4 class="text-uppercase pb-3">Harap menunggu...</h4>
	</div>
</div>
{if $result_status=="success"}
<div id="result" class="card card-style text-center d-none">
	<div class="content py-5">
		<h1><i class="fa fa-check-circle color-green-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Berhasil</h3>
		<h4 class="text-uppercase pb-3">Mengarahkan ke halaman...</h4>
	</div>
</div>
<meta http-equiv="refresh" content="3; url={$result_link}" />
{else}
<div id="result" class="card card-style text-center d-none">
	<div class="content py-5">
		<h1><i class="fa fa-window-close color-danger-dark fa-4x"></i></h1>
		<h3 class="fa-3x pt-5 pb-2">Error</h3>
		<h4 class="text-uppercase pb-3">Mengarahkan ke halaman...</h4>
	</div>
</div>
<meta http-equiv="refresh" content="3; url={$result_link}" />
{/if}
{include file="footer.tpl"}
{literal}
<script>
var process = document.querySelector("#process");
var result = document.querySelector("#result");
window.addEventListener("load", function() {
	setTimeout(function(){
		process.classList.add("d-none");
		result.classList.remove("d-none");
	}, 1000);
});
</script>
{/literal}