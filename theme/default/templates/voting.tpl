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
<style>
  /* Sembunyikan radio asli */
  input[type="radio"] {
    display: none;
  }

  /* Style kartu kandidat */
  .candidate-card {
    cursor: pointer;
    border: 2px solid transparent;
    border-radius: 12px;
    padding: 10px;
    transition: border-color 0.3s ease;
    position: relative;
  }

  /* Border hijau pada label saat radio dipilih */
  input[type="radio"]:checked + label.candidate-card,
  input[type="radio"]:checked + label.candidate-card span.under-slider-btn {
    border: 2px solid #28a745;
    position: relative;
  }

  input[type="radio"]:checked + label.candidate-card::after {
    content: "✓";
    position: absolute;
    top: 8px;
    right: 8px;
    background-color: #28a745;
    color: white;
    font-weight: bold;
    border-radius: 50%;
    width: 20px;
    height: 20px;
    text-align: center;
    line-height: 20px;
    box-shadow: 0 0 4px rgba(0,0,0,0.2);
  }
</style>
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
    <div class="card header-card shape-rounded" data-card-height="70">
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
        <div class="card-bg preload-img" data-src="{$settings.siteurl}/{$theme}/assets/images/icons/logo.png"></div>
    </div>

{if $allCandidates}

<div class="content mb-2 pt-3">
{foreach from=$allCandidates key=key item=candidate name=myLoop}
    <h5 class="text-center font-18 font-600 text-uppercase my-3">🗳 Pemilihan {$key}</h5>
    <div class="clearfix"></div>
<div id="loader" data-types="{$key}" class="loader d-none text-center"><i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> <span class="ps-1 text-uppercase font-700">Terimakasih sudah voting!</span></div>
  
<div class="row text-center mb-5">
  {foreach from=$candidate item=ac key=idx}
    <div class="col-4 col-lg-12 candidate_type" data-type="{$ac.candidate_type}">
      <div class="card card-style pt-2 mb-3">
        <h1 class="center-text pt-3">
          <input type="radio" name="candidate" id="candidate-{$ac.id}-{$idx}" value="{$ac.id}">
          <label for="candidate-{$ac.id}-{$idx}" class="candidate-card d-block text-center position-relative">
          <img class="preload-img owl-lazy" loading="lazy" data-src="{$ac.foto}" height="200">
          </label>
        </h1>
        <h4 class="color-theme font-600">{$ac.candidate_name}</h4>
        <p class="font-10 mb-1">klik gambar untuk memilih</p>
      </div>
    </div>
  {/foreach}
</div>
{/foreach}
{else}
<div class="card card-style">
<div class="content mb-0">
	<div class="row">
	<div id="loaders" class="text-center"><i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> <span class="ps-1 text-uppercase font-700"> Belum ada voting!</span></div>
	</div>
</div>
</div>
{/if}
</div>

    <div class="footer"><div class="footer card card-style mx-0 mb-0 mt-5">
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

<div id="menu-highlights" 
         class="menu menu-box-bottom menu-box-detached rounded-m"
         data-menu-height="310" 
         data-menu-effect="menu-over">  

        <div class="card card-style">
            <div class="highlight-changer pt-3 pb-2">
                <p class="text-center">
                    We give some packed with a beautiful color scheme.<br>Tap on your favorite! The page will adapt!
                </p>
                <a href="#" data-change-highlight="blue"><i class="fa fa-circle color-blue-dark"></i><span class="color-blue-light">Default</span></a>
                <a href="#" data-change-highlight="red"><i class="fa fa-circle color-red-dark"></i><span class="color-red-light">Red</span></a>    
                <a href="#" data-change-highlight="orange"><i class="fa fa-circle color-orange-dark"></i><span class="color-orange-light">Orange</span></a>    
                <a href="#" data-change-highlight="pink2"><i class="fa fa-circle color-pink-dark"></i><span class="color-pink-light">Pink</span></a>    
                <a href="#" data-change-highlight="magenta"><i class="fa fa-circle color-magenta-dark"></i><span class="color-magenta-light">Purple</span></a>    
                <a href="#" data-change-highlight="aqua"><i class="fa fa-circle color-aqua-dark"></i><span class="color-aqua-light">Aqua</span></a>      
                <a href="#" data-change-highlight="teal"><i class="fa fa-circle color-teal-dark"></i><span class="color-teal-light">Teal</span></a>      
                <a href="#" data-change-highlight="mint"><i class="fa fa-circle color-mint-dark"></i><span class="color-mint-light">Mint</span></a>      
                <a href="#" data-change-highlight="green"><i class="fa fa-circle color-green-dark"></i><span class="color-green-light">Green</span></a>    
                <a href="#" data-change-highlight="grass"><i class="fa fa-circle color-green-dark"></i><span class="color-green-light">Grass</span></a>       
                <a href="#" data-change-highlight="sunny"><i class="fa fa-circle color-yellow-dark"></i><span class="color-yellow-light">Sunny</span></a>    
                <a href="#" data-change-highlight="yellow"><i class="fa fa-circle color-yellow-dark"></i><span class="color-yellow-light">Goldish</span></a>
                <a href="#" data-change-highlight="brown"><i class="fa fa-circle color-brown-dark"></i><span class="color-brown-light">Wood</span></a>    
                <a href="#" data-change-highlight="dark"><i class="fa fa-circle color-dark-dark"></i><span class="color-dark-light">Night</span></a>
                <a href="#" data-change-highlight="dark"><i class="fa fa-circle color-dark-dark"></i><span class="color-dark-light">Dark</span></a>
                <div class="clearfix"></div>
            </div>
        </div>
        <a href="#" class="close-menu btn btn-full btn-margins rounded-sm shadow-l bg-highlight btn-m font-900 text-uppercase mb-0">Close color Menu</a>
</div>   
<script type="text/javascript" src="{$settings.siteurl}/{$theme}/assets/scripts/bootstrap.minv35.js?v=2"></script>
<script type="text/javascript" src="{$settings.siteurl}/{$theme}/assets/scripts/customv35.js?v=2"></script>
</body>
</html>

{literal}
<script>
document.addEventListener('DOMContentLoaded', function () {
	var voteCheckUrl = '{/literal}{"?p=voting&checkvotingbtn"|surl}{literal}';
	var voteSaveUrl = '{/literal}{"?p=voting&saveresult"|surl}{literal}';
	var uid = '{/literal}{$user.id}{literal}';
  var allCandidates = '{/literal}{$allCandidates|count}{literal}';
  // Tangkap semua radio kandidat
  document.querySelectorAll('input[name="candidate"]').forEach(radio => {
    radio.addEventListener('change', async function() {
      if (!await dialog.confirm(`Apakah anda yakin akan memilih calon kandidat ini?`)) {
        this.checked = false;  // Lepaskan pilihan radio itu
        return;
      }

      const candidateId = this.value;
      // Ambil candidate_type dari elemen induk terdekat (col-6 dengan data-type)
      const candidateType = this.closest('[data-type]').getAttribute('data-type');
      // Data tambahan seperti student_id, dip, dag bisa Anda isi sesuai kebutuhan
      const data = {
        candidate_id: candidateId,
        candidate_type: candidateType,
        student_id: uid // contoh student_id, sesuaikan pengambilan riil
      };

      // Kirim data ke server PHP
      fetch(voteSaveUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
      })
      .then(res => res.json())
      .then(response => {
        if(response.status === 'success') {
          // Jika berhasil, sembunyikan semua kandidat dengan candidate_type terpilih
          document.querySelectorAll(`[data-type="${candidateType}"]`).forEach(el => {
            el.style.display = 'none';
          });
          document.querySelectorAll(`.loader[data-types="${candidateType}"]`).forEach(loader => {
            loader.classList.remove('d-none');
          });
          showAlert("Sukses",'Voting berhasil disimpan.');
          setInterval(checkVoteBtn, 3000);
        } else {
          showAlert("Error",'Gagal menyimpan voting: ' + response.message);
          // Jika gagal, hapus pilihan radio agar user bisa coba lagi
          radio.checked = false;
        }
      })
      .catch(err => {
		    console.log(err);
        console.error('Error:', err);
        showAlert("Error",'Terjadi kesalahan saat menyimpan voting.' + err);
        radio.checked = false;
      });
    });
  });

function checkVoteBtn() {
  fetch(voteCheckUrl)
    .then(res => {
      if (!res.ok) throw new Error("Network response was not ok");
      return res.json(); // langsung parse JSON
    })
    .then(data => {
      console.log(data);
      if(data.status === 'success') {
        window.location.reload();
      }
    })
    .catch(err => {
      console.error('Fetch error:', err);
    });
}

if(allCandidates==0){     
  setInterval(checkVoteBtn, 3000);
}



	// document.addEventListener('contextmenu', e => e.preventDefault());
	// document.addEventListener('copy', e => e.preventDefault());
	// document.addEventListener('paste', e => e.preventDefault());
	// document.addEventListener('keydown', function(e) {
	// 	if (e.ctrlKey && (e.key === 'c' || e.key === 'v' || e.key === 'u')) {
	// 		e.preventDefault();
	// 	}
	// });
	// // Deteksi keluar tab
	// document.addEventListener("visibilitychange", function() {
	// 	if (document.hidden) {
	// 		alert("Anda meninggalkan halaman voting!");
	// 	}
	// });
});
</script>
{/literal}