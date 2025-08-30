{include file="header1.tpl"}
{if $ppdb_settings.status}
<div id="notification-fail" data-dismiss="notification-fail" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade hide">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-fail" class="fa fa-times-circle"></i>
	</span>
<h1 class="font-15 color-white">Error!</h1>
<p class="pb-1" id="ErrorMsg">
</p>
</div>
<div id="notification-success" data-dismiss="notification-success" data-bs-delay="3000" data-bs-autohide="true" class="notification notification-ios bg-dark-dark ms-2 me-2 mt-2 rounded-s fade hide">
	<span class="notification-icon color-white rounded-s">
		<i class="fa fa-bell color-yellow-dark"></i>
		<em>Notifikasi</em>
		<i data-dismiss="notification-success" class="fa fa-times-circle"></i>
	</span>
 <h1 class="font-15 color-white">Sukses!</h1>
 <p class="pb-1" id="SuccessMsg">
 </p>
</div>
<div class="card card-style mb-2">
	<div class="content my-2">
		<h4 class="font-600">FORMULIR PENERIMAAN PESERTA DIDIK BARU GEL. {$ppdb_settings.gelombang} TAHUN {$ppdb_settings.tahun_ajaran}</h4>
	</div>
</div>
<div class="PPDB-form">
<form class="PPDBform" method="post" id="PPDBform" autocomplete="off" data-action='{"?p=ppdb&daftar_baru"|surl}'>
  {$token}
<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Registrasi Peserta Didik</h4>
      	<input type="hidden" value="{$ppdb_settings.gelombang}" name="admission_phase_id">
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="admission_type_id" name="admission_type_id" class="form-control validate-text" >
				<option value="reguler">Reguler</option>
				<option value="prestasi">Prestasi</option>
			</select>
			<label for="admission_type_id" class="color-highlight font-400 font-13">{$lang.admission_type_id}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div id="achievement_wrapper" class="input-style has-borders no-icon input-style-always-active validate-field mb-4 d-none">
			<textarea type="text" name="achievement" class="form-control validate-text" id="achievement" placeholder="{$lang.achievement_desc}" ></textarea>
			<label for="achievement" class="color-highlight font-400 font-13">{$lang.achievement}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_name" name="prev_school_name" placeholder="{$lang.prev_school_name}" value="" autocomplete="off" required>
			<label for="prev_school_name" class="color-highlight font-400 font-13">{$lang.prev_school_name}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_address" name="prev_school_address" placeholder="{$lang.prev_school_address}" value="" autocomplete="off" required>
			<label for="prev_school_address" class="color-highlight font-400 font-13">{$lang.prev_school_address}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
	</div>
</div>
<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Data Pribadi</h4>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" name="fullname" placeholder="{$lang.fullname}" value="" autocomplete="off" required>
			<label for="fullname" class="color-highlight font-400 font-13">{$lang.fullname}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-tel mb-4">
			<input type="number" class="form-control validate-name" id="nisn" name="nisn" placeholder="{$lang.nisn}" value="" autocomplete="off" required>
			<label for="nisn" class="color-highlight font-400 font-13">{$lang.nisn}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-password mb-4">
			<input type="text" class="form-control validate-name" id="password" name="password" placeholder="{$lang.password}" value="" autocomplete="off" required>
			<label for="password" class="color-highlight font-400 font-13">{$lang.password}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-email mb-4">
			<input type="email" class="form-control validate-name" id="email" name="email" placeholder="{$lang.email}" value="" autocomplete="off" required>
			<label for="email" class="color-highlight font-400 font-13">{$lang.email}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="sex" name="sex" class="form-control validate-text" required>
				<option value="L">Laki-laki</option>
				<option value="P">Perempuan</option>
			</select>
			<label for="sex" class="color-highlight font-400 font-13">{$lang.sex}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="birthday_place" class="form-control validate-tel" id="birthday_place" placeholder="{$lang.birthday_place}" autocomplete="off" required>
			<label for="birthday_place" class="color-highlight font-400 font-13">{$lang.birthday_place}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="date" name="birthday" class="form-control validate-text" id="birthday" placeholder="{$lang.birthday}" autocomplete="off" required>
			<label for="birthday" class="color-highlight font-400 font-13">{$lang.birthday}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="phone" class="form-control validate-tel" id="phone" placeholder="{$lang.phone_number}" autocomplete="off" required>
			<label for="phone" class="color-highlight font-400 font-13">{$lang.phone_number}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="religion_id" name="religion_id" class="form-control validate-text" required>
				{foreach from=$allReligions key=key item=ar}
				<option value="{$key}">{$ar}</option>
				{/foreach}
			</select>
			<label for="religion_id" class="color-highlight font-400 font-13">{$lang.religion}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="special_treatment_id" name="special_treatment_id" class="form-control validate-text" required>
				<option value="0">Tidak Ada</option>
				{foreach from=$allSpecialNeeds key=key item=asn}
				<option value="{$key}">{$asn}</option>
				{/foreach}
			</select>
			<label for="special_treatment_id" class="color-highlight font-400 font-13">{$lang.special_treatment}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<textarea type="text" name="address_user" class="form-control validate-tel" id="address_user" placeholder="{$lang.address}" autocomplete="off" required></textarea>
			<label for="address_user" class="color-highlight font-400 font-13">{$lang.address}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="row mb-0">
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" class="form-control validate-number" id="rt" name="rt" placeholder="RT" autocomplete="off" required>
					<label for="rt" class="color-highlight">RT</label>
					<i class="fa fa-times disabled invalid color-red-dark"></i>
					<i class="fa fa-check disabled valid color-green-dark"></i>
					<em>({$lang.required})</em>
				</div>
			</div>
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" class="form-control validate-number" id="rw" name="rw"  placeholder="RW" autocomplete="off" required>
					<label for="rw" class="color-highlight">RW</label>
					<i class="fa fa-times disabled invalid color-red-dark"></i>
					<i class="fa fa-check disabled valid color-green-dark"></i>
					<em>({$lang.required})</em>
				</div>
			</div>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_village" class="form-control validate-text" id="sub_village" placeholder="{$lang.sub_village}" autocomplete="off" required>
			<label for="sub_village" class="color-highlight font-400 font-13">{$lang.sub_village}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="village" class="form-control validate-text" id="village" placeholder="{$lang.village}" autocomplete="off" required>
			<label for="village" class="color-highlight font-400 font-13">{$lang.village}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_district" class="form-control validate-text" id="sub_district" placeholder="{$lang.sub_district}" autocomplete="off" required>
			<label for="sub_district" class="color-highlight font-400 font-13">{$lang.sub_district}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="district" class="form-control validate-text" id="district" placeholder="{$lang.district}" autocomplete="off" required>
			<label for="district" class="color-highlight font-400 font-13">{$lang.district}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="postal_code" class="form-control validate-tel" id="postal_code" placeholder="{$lang.postal_code}" autocomplete="off" required>
			<label for="postal_code" class="color-highlight font-400 font-13">{$lang.postal_code}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<h4 class="mb-3">Data Orang Tua/Wali</h4>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_type" name="parents_type" class="form-control validate-text" required>
				<option value="1">Kandung</option>
				<option value="0">Wali</option>
			</select>
			<label for="parents_type" class="color-highlight font-400 font-13">{$lang.parents_type}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="parents_father_name" name="parents_father_name" placeholder="{$lang.parents_father_name}" value="" autocomplete="off" required>
			<label for="parents_father_name" class="color-highlight font-400 font-13">{$lang.parents_father_name}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_father_job_id" name="parents_father_job_id" class="form-control validate-text" required>
				<option value="0">Tidak Ada</option>
				{foreach from=$allEmployements key=key item=ae}
				<option value="{$key}">{$ae}</option>
				{/foreach}
			</select>
			<label for="parents_father_job_id" class="color-highlight font-400 font-13">{$lang.parents_father_job}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="parents_father_phone" class="form-control validate-tel" id="parents_father_phone" placeholder="{$lang.parents_father_phone}" autocomplete="off" required>
			<label for="parents_father_phone" class="color-highlight font-400 font-13">{$lang.parents_father_phone}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="parents_mother_name" name="parents_mother_name" placeholder="{$lang.parents_mother_name}" value="" autocomplete="off" required>
			<label for="parents_mother_name" class="color-highlight font-400 font-13">{$lang.parents_mother_name}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_mother_job_id" name="parents_mother_job_id" class="form-control validate-text" required>
				<option value="0">Tidak Ada</option>
				{foreach from=$allEmployements key=key item=ae}
				<option value="{$key}">{$ae}</option>
				{/foreach}
			</select>
			<label for="parents_mother_job_id" class="color-highlight font-400 font-13">{$lang.parents_mother_job}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="parents_mother_phone" class="form-control validate-tel" id="parents_mother_phone" placeholder="{$lang.parents_mother_phone}" autocomplete="off" required>
			<label for="parents_mother_phone" class="color-highlight font-400 font-13">{$lang.parents_mother_phone}</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>({$lang.required})</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<div class="d-block">
			<div class="form-group row mb-2">
				<label for="declaration" class="col-sm-4 control-label">{$lang.declaration} <span class="text-danger">*</span></label>
				<div class="col-sm-8">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" name="declaration" id="declaration" required>
						<label class="form-check-label" for="declaration">{$lang.declaration_desc}</label>
					</div>
				</div>
			</div>
			
      		<input type="hidden" value="do_add" name="act">
			<button type="submit" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">Simpan Data Pendaftaran</button>
		</div>
	</div>
</div>
</form>
</div>
<div id="result_ppdb" class="d-none card card-style mb-5 content rounded-m shadowl">
	<div class="card-body">
		<div class="d-flex">
			<div class="align-self-center">
				<a href="javascript:void(0)" class="icon icon-l bg-success color-white shadow-xl rounded-m me-3"><i class="fa fa-check"></i></a>
			</div>
			<div class="align-self-center">
				<h4 class="font-600 mb-0">Pendaftaran <br> Berhasil</h4>
			</div>
		</div>
		<div class="divider mt-4 mb-2"></div>
		<div class="row mb-0">
			<div class="col-5"><p class="font-15 font-700 color-theme">{$lang.fullname}</p></div>
			<div class="col-7"><p class="font-13 color-theme" id="ppdb_fullname">Lorem Ipsum</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-5"><p class="font-15 font-700 color-theme">{$lang.registration_number}</p></div>
			<div class="col-7"><p class="font-13 color-theme" id="ppdb_registration_number">123456789</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-12"><p class="font-13 color-theme">Silahkan simpan & cetak formulir anda dengan klik tombol dibawah</p></div>
		</div>
		<div class="divider divider-margins mt-2"></div>
		<a id="ppdb_cetak_formulir" href="javascript:void(0)" class="btn btn-m bg-primary btn-full rounded-sm shadow-xl text-uppercase font-800" target="_blank">Download Formulir Pendaftaran</a>
	</div> 
<div class="card-overlay gradient-green opacity-95 rounded-m shadow-l"></div>
<div class="card-overlay dark-mode-tint rounded-m shadow-l"></div>           
</div>
{else}
<a href='{"?p=ppdb"|surl}' data-card-height="80" class="card card-style mb-3">
	<div class="card-center">
		<h5 class="ps-3">PPDB di TUTUP</h5>
		<p class="ps-3 mt-n2 font-12 color-highlight mb-0">Pendaftaran siswa baru TA {$ppdb_settings.tahun_ajaran} sudah ditutup.</p>
	</div>
	<div class="card-center opacity-30">
		<i class="fa fa-list opacity-80 float-end color-theme pe-3 font-20"></i>
	</div>
</a>
{/if}
{include file="footer.tpl"}
{literal}
<script>
var _0x7231x108ppdb = document["querySelectorAll"]('.PPDB-form');
if (_0x7231x108ppdb["length"]) {
	var result_ppdb = document.getElementById('result_ppdb');
	var ppdb_fullname = document.getElementById('ppdb_fullname');
	var ppdb_registration_number = document.getElementById('ppdb_registration_number');
	var ppdb_cetak_formulir = document.getElementById('ppdb_cetak_formulir');
	var _0x7231x109ppdb = document["getElementById"]('PPDBform');
	var notifIDfail = document.getElementById('notification-fail');
	toastIDfail = new bootstrap.Toast(notifIDfail);
	var notifIDsuccess = document.getElementById('notification-success');
	toastIDsuccess = new bootstrap.Toast(notifIDsuccess);
	var errorMsgEl = document.getElementById('ErrorMsg');
	var SuccessMsgEl = document.getElementById('SuccessMsg');
	_0x7231x109ppdb["onsubmit"] = function(_0x7231xa) {
		_0x7231xa["preventDefault"]();
		var inputs = _0x7231x109ppdb.querySelectorAll('input:not([type="hidden"]):not([disabled]), textarea, select');
		var isValid = true;

		inputs.forEach(function(input) {
			if (input.offsetParent === null || input.closest('.d-none')) {
				return;
			}
			if (input.hasAttribute('required') || input.closest('.validate-field') || input.closest('.validate-text')) {
				if (input.value.trim() === '') {
					isValid = false;
					input.classList.add('is-invalid');
				} else {
					input.classList.remove('is-invalid');
				}
			}
		});
		console.log(isValid);
		if (!isValid) {
			toastIDfail.show();
			errorMsgEl.innerHTML = "Gagal menyimpan, silahkan cek kembali data form dan pastikan semua form terisi.";
			return false;
		}else{
			_0x7231x109ppdb["setAttribute"]('data-form', 'valid');
		}
			
		if (_0x7231x109ppdb["getAttribute"]('data-form') === 'valid') {
			var formData = new FormData(_0x7231x109ppdb);
			var formDataUrl = _0x7231x109ppdb["getAttribute"]('data-action');
			var xhr = new XMLHttpRequest();
			xhr.open("POST", formDataUrl, true);
			xhr.onload = function () {
				if (xhr.status === 200) {
					try {
						var response = JSON.parse(xhr.responseText);
						if (response.result === 'success') {
							toastIDsuccess.show();
							SuccessMsgEl.innerHTML = response.msg;
							ppdb_fullname.innerHTML = response.fullname;
							ppdb_registration_number.innerHTML = response.registration_number;
							ppdb_cetak_formulir.href = response.link;
							result_ppdb.classList.remove("d-none");
						}else{
							toastIDfail.show();
							errorMsgEl.innerHTML = response.msg;
						}
					} catch (e) {
						console.log(e);
						console.error('Gagal parse JSON:', e);
						toastIDfail.show();
						errorMsgEl.innerHTML = 'Gagal parse JSON:', e;
					}
				}
			};
			xhr.send(formData);
		}
	}
};
document.addEventListener('DOMContentLoaded', function () {
    const select = document.getElementById('admission_type_id');
    const achievementDiv = document.getElementById('achievement_wrapper');
    function toggleAchievement() {
        if (select.value === 'prestasi') {
            achievementDiv.classList.remove('d-none');
        } else {
            achievementDiv.classList.add('d-none');
        }
    }
    toggleAchievement();
    select.addEventListener('change', toggleAchievement);
});
// Flag
let isFormChanged = false;
document.addEventListener("DOMContentLoaded", function() {
    const form = document.querySelector("form");
    if (form) {
        form.addEventListener("input", function() {
        	isFormChanged = true;
        });
    }
    // back/refresh/close
    window.addEventListener("beforeunload", function(e) {
        if (isFormChanged) {
            e.preventDefault();
            e.returnValue = "Data belum disimpan, apakah Anda yakin ingin meninggalkan halaman ini?";
			preloader["classList"]["add"]('preloader-hide');
        }
    });
});
</script>
{/literal}