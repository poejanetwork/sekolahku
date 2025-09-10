<!DOCTYPE HTML>
<html lang="en">
<head>
{$telegram_webapp_header}
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<meta name="description" content='{$settings.description}'>
<meta name="keyword" content='{$settings.keywords}'>
<meta name="copyright" href='{$sc_copyright_wa}'>
<meta name="script" href='{$sc_copyright}'>
<title>{$pagename} {$settings.sitename} | {$settings.description}</title>
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/styles/bootstrapv35.css?v=2">
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900|Roboto:300,300i,400,400i,500,500i,700,700i,900,900i&amp;display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="{$settings.siteurl}/{$theme}/assets/fonts/css/fontawesome-all.min.css">  
<link rel="icon" type="image/png" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon-96x96.png" sizes="96x96" />
<link rel="icon" type="image/svg+xml" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.svg" />
<link rel="shortcut icon" href="{$settings.siteurl}/{$theme}/assets/images/splash/favicon.ico" />
<link rel="apple-touch-icon" sizes="180x180" href="{$settings.siteurl}/{$theme}/assets/images/splash/apple-touch-icon.png" />
<link rel="manifest" href="{$settings.siteurl}/{$theme}/assets/images/splash/site.webmanifest" />
</head>
<body class="theme-light" data-highlight="blue2">
<div id="preloader"><div class="spinner-border color-highlight" role="status"></div></div>
<div id="page">
<div id="notif" data-dismiss="notif" data-bs-delay="5000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notif" class="fa fa-times-circle"></i>
	</span>
<h1 id="notif-result" class="font-15 color-white">Error/Sukses</h1>
<p id="notif-message" class="pb-1"></p>
<div class="progress active"></div>
</div>

<!-- page content-->
<div id="page-loader" class="loader-overlay d-none">
  <div class="spinner"></div>
</div>
<div class="page-content">
    <div class="page-title page-title-small text-center">
        <h3 class="color-white">by Abu Puja</h3>
    </div>
    <div class="card header-card shape-rounded" data-card-height="210">
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
        <div class="card-bg preload-img" data-src="{$settings.siteurl}/{$theme}/assets/images/icons/logo.png"></div>
    </div>


{* Hitung total suara sudah memilih *}
{assign var="totalSudahMemilih" value=0}
{foreach from=$allCandidates item=candidateGroup}
    {foreach from=$candidateGroup item=candidate}
        {math assign="totalSudahMemilih" equation="x + y" x=$totalSudahMemilih y=$candidate.jumlahsuara}
    {/foreach}
{/foreach}

{* Set total pemilih tetap *}
{assign var="totalPemilih" value=1046}

{* Hitung total belum memilih *}
{math assign="totalBelumMemilih" equation="x - y" x=$totalPemilih y=$totalSudahMemilih}

{* Hitung persentase suara masuk *}
{if $totalPemilih > 0}
    {math assign="persenSuaraMasuk" equation="(x / y) * 100" x=$totalSudahMemilih y=$totalPemilih format="%.2f"}
{else}
    {assign var="persenSuaraMasuk" value=0}
{/if}

<div class="card card-style mt-4 mb-5">
  <div class="content">
      <h4 class="text-center">Real Quick Count</h4>
      <p class="mt-n2 color-highlight text-center mb-2">Perhitungan kandidat</p>
      <h3 class="text-center"><span id="totaljumlahsuaramasuk1">{$persenSuaraMasuk}</span>% jumlah suara masuk</h3>
      <div class="progress rounded-sm shadow-xl border border-fade-green-dark" style="height:28px">
          <div id="totaljumlahsuaramasuk2" 
               class="progress-bar bg-green-dark text-start ps-3 color-white" 
               role="progressbar" 
               style="width: {$persenSuaraMasuk}%" 
               aria-valuenow="{$persenSuaraMasuk}" 
               aria-valuemin="0" 
               aria-valuemax="100">
          </div>
      </div>
      <div class="divider mt-4 mb-2"></div>
      <div class="d-flex justify-content-between">
          <div class="align-self-center text-center">
              <p class="font-600 mb-0">Total Jumlah Pemilih</p>
              <h1 class="mb-2" id="totalpemilih">{$totalPemilih}</h1>
          </div>
          <div class="align-self-center text-center">
              <p class="font-600 mb-0">Total <span class="color-green-dark">Sudah</span> Memilih</p>
              <h1 class="mb-2 color-green-dark" id="totalsudahmemilih">{$totalSudahMemilih}</h1>
          </div>
          <div class="align-self-center text-center">
              <p class="font-600 mb-0">Total <span class="color-red-dark">Belum</span> Memilih</p>
              <h1 class="mb-2 color-red-dark" id="totalbelummemilih">{$totalBelumMemilih}</h1>
          </div>
      </div>     
      <div class="divider mt-2"></div>
      <h4 class="text-center w-100 d-block"><img src="{$settings.sitelogo}" class="d-block m-auto" width="120">PEMIRA {$settings.sitename}<br/><span class="color-green-dark">JUJUR</span>, <span class="color-yellow-dark">ADIL</span>, <span class="color-red-dark">TERPERCAYA</span></h4>
  </div>
</div>


    <div class="text-center d-block">
<button type="button" class="btn btn-block btn-danger position-fixed bottom-0 end-0 font-14 walk-card" id="resetBtn">Reset Tombol</button></div>
{foreach from=$allCandidates key=key item=candidate}
<div class="card card-style mb-0">
	<div class="content">
		<h4 class="text-center mb-0">Voting {$key}</h4>
	</div>
</div>
	<div class="content mt-1">
		{foreach from=$candidate item=ac}
		<div data-card-height="90" class="card card-style mb-1 mx-0">
			<div class="card-center ps-2 ms-2">
				<img src="{$ac.foto}" data-src="{$ac.foto}" alt="img" width="60" class="bg-red-dark rounded-circle preload-img me-n3 border border-gray-light border-xs entered loaded" data-ll-status="loaded">
			</div>
			<div class="card-center ps-4 ms-5">
				<h4 class="ps-2 font-16">{$ac.candidate_name}<br/><small class="font-300 font-14"><span class="reloadSuara" data-vid="{$ac.id}">{$ac.jumlahsuara}</span> Suara</small></h4>
				<div class="mx-2 progress rounded-l" style="height:20px;">
					<div data-vid="{$ac.id}" class="progress-bar border-0 bg-green-dark text-start ps-2" role="progressbar" style="width: {$ac.jumlahsuara}%" aria-valuenow="{$ac.jumlahsuara}" aria-valuemin="0" aria-valuemax="500">
					</div>
				</div>
			</div>
		</div>
		{/foreach}
</div>
{/foreach}

    <div class="footer"><div class="footer card card-style mx-0 mb-0">
        <a href="#" class="footer-title pt-4">{$settings.sitename}</a>
        <p class="text-center font-12 mt-n1 mb-3 opacity-70">
            Pertama & Tetap yang Terbaik
        </p>
        <p class="footer-copyright pb-3 mb-1">Copyright © Abu Puja <span id="copyright-year">2025</span>. All Rights Reserved.</p>
    </div>
    <div class="footer-card card shape-rounded bg-20" style="height:200px;bottom:0px;">
        <div class="card-overlay bg-highlight opacity-90"></div>
    </div>
    </div>

</div>    
<script type="text/javascript" src="{$settings.siteurl}/{$theme}/assets/scripts/bootstrap.minv35.js?v=2"></script>
<script type="text/javascript" src="{$settings.siteurl}/{$theme}/assets/scripts/customv35.js?v=2"></script>
</body>
</html>

{literal}
<script>
window.addEventListener("load", function() {
	var voteResetUrl = '{/literal}{"?p=voting&resetresult"|surl}{literal}';
	var voteUrl = '{/literal}{"?p=voting&getresult"|surl}{literal}';
function updateSuara() {
  fetch(voteUrl)
    .then(res => {
      if (!res.ok) throw new Error("Network response was not ok");
      return res.json(); // langsung parse JSON
    })
    .then(data => {
      // data diasumsikan array objek [{id:..., jumlahsuara:...}, ...]
      data.forEach(cand => {
        // Update teks jumlahsuara berdasarkan data-vid
        document.querySelectorAll(`.reloadSuara[data-vid="${cand.id}"]`).forEach(el => {
          el.textContent = cand.jumlahsuara;
        });

        // Hitung persen untuk progress bar
        const persen = (cand.jumlahsuara / 500) * 100;

        // Update lebar dan atribut aria valuemax progress bar
        document.querySelectorAll(`.progress-bar[data-vid="${cand.id}"]`).forEach(bar => {
          bar.style.width = persen + '%';
          bar.setAttribute('aria-valuenow', cand.jumlahsuara);
        });
      });
    })
    .catch(err => {
      console.error('Fetch error:', err);
    });
	console.log('data diupdate!');
}

setInterval(updateSuara, 3000);
updateSuara();

function reloadQuickCount() {
    let totalSudahMemilih = 0;

    // Ambil semua suara dari elemen reloadSuara
    document.querySelectorAll('.reloadSuara').forEach(function(el) {
        totalSudahMemilih += parseInt(el.innerText) || 0;
    });

    // Total pemilih tetap
    const totalPemilih = 1046;

    // Hitung total belum memilih
    const totalBelumMemilih = totalPemilih - totalSudahMemilih;

    // Hitung persentase suara masuk
    let persenSuaraMasuk = 0;
    if (totalPemilih > 0) {
        persenSuaraMasuk = ((totalSudahMemilih / totalPemilih) * 100).toFixed(2);
    }

    // Update tampilan angka
    document.getElementById('totalsudahmemilih').innerText = totalSudahMemilih;
    document.getElementById('totalbelummemilih').innerText = totalBelumMemilih;
    document.getElementById('totalpemilih').innerText = totalPemilih;

    // Update progress bar utama
    const progressText = document.getElementById('totaljumlahsuaramasuk1');
    const progressBar = document.getElementById('totaljumlahsuaramasuk2');
    progressBar.style.width = persenSuaraMasuk + '%';
    progressBar.setAttribute('aria-valuenow', persenSuaraMasuk);
    progressBar.innerText = persenSuaraMasuk + '% Complete';
    progressText.innerText = persenSuaraMasuk;
}
// Jalankan pertama kali saat halaman load
reloadQuickCount();
// Auto reload tiap 3 detik seperti reloadSuara()
setInterval(reloadQuickCount, 3000);

document.getElementById('resetBtn').onclick = async function() {
  if (!await dialog.confirm(`Apakah anda yakin akan reset tombol voting?`)) return;

  fetch(voteResetUrl)
    .then(async res => {
      if (!res.ok) throw new Error("Network response was not ok");
      return res.json(); // langsung parse JSON
    })
    .then(async data => {
      if(data.status === 'success') {
        await showAlert("Sukses",'Tombol voting di user sudah di reset.');
      }
    })
    .catch(err => {
      console.error('Fetch error:', err);
    });
};

});
</script>
{/literal}