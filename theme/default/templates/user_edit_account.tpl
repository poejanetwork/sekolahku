{include file="header1.tpl"}
{if $edit_account}
<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">{$lang.update} {$lang.account}</h5>
	<div class="clearfix"></div>
		<div class="d-flex">
			<div class="text-center">
				<img src='{$edit_account.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block">
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$edit_account.fullname}</h2>
				<p class="font-11 mt-n0 color-highlight">{$edit_account.email}</p>
			</div>
		</div>
	</div>
</div>

<form class="AccountEditform" method="post" id="AccountEditform" autocomplete="off" data-action='{"?p=edit_account"|surl}'>
  {$token}
<div class="card card-style">
<div class="content mb-0 mt-3">
	<h5 class="float-start font-16">Data Pribadi</h5>
	<div class="clearfix"></div>
	<div class="input-style has-borders no-icon input-style-active">
		<input name="fullname" type="name" class="form-control validate-name" id="fullname" placeholder="{$lang.fullname}" value="{$edit_account.fullname}">
		<label for="fullname" class="color-blue-dark font-11 mt-1">{$lang.fullname}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="sex" name="sex" class="form-control validate-text" >
			<option value="L" {if "L"==$edit_account.sex}selected{/if}>Laki-laki</option>
			<option value="P" {if "P"==$edit_account.sex}selected{/if}>Perempuan</option>
		</select>
		<label for="sex" class="color-blue-dark font-11 mt-1">{$lang.sex}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="nik" type="text" class="form-control validate-text" id="nik" placeholder="{$lang.nik}" value="{$edit_account.nik}">
		<label for="nik" class="color-blue-dark font-11 mt-1">{$lang.nik}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="birthday_place" type="text" class="form-control validate-text" id="birthday_place" placeholder="{$lang.birthday_place}" value="{$edit_account.birthday_place}">
		<label for="birthday_place" class="color-blue-dark font-11 mt-1">{$lang.birthday_place}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="birthday" type="date" class="form-control validate-date" id="birthday" placeholder="{$lang.birthday}" value="{$edit_account.birthday}">
		<label for="birthday" class="color-blue-dark font-11 mt-1">{$lang.birthday}</label>
		<em class="">({$lang.required})</em>
	</div>
	</div>
</div>


<div class="card card-style">
<div class="content mb-0 mt-3">
	<h5 class="float-start font-16">Data Profil</h5>
	<div class="clearfix"></div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="email" type="email" class="form-control validate-email" id="email" placeholder="{$lang.email}" value="{$edit_account.email}">
		<label for="email" class="color-blue-dark font-11 mt-1">{$lang.email}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="phone" type="number" class="form-control validate-number" id="phone" placeholder="{$lang.phone_number}" value="{$edit_account.phone}">
		<label for="phone" class="color-blue-dark font-11 mt-1">{$lang.phone_number}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="religion_id" name="religion_id" class="form-control validate-text" >
			{foreach from=$allReligions key=key item=ar}
			<option value="{$key}" {if $key==$edit_account.religion_id}selected{/if}>{$ar}</option>
			{/foreach}
		</select>
		<label for="religion_id" class="color-blue-dark font-11 mt-1">{$lang.religion}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="marriage_status" name="marriage_status" class="form-control validate-text" >
			<option value="single" {if "single"==$edit_account.marriage_status}selected{/if}>Single</option>
			<option value="kawin" {if "kawin"==$edit_account.marriage_status}selected{/if}>Kawin</option>
			<option value="duda" {if "duda"==$edit_account.marriage_status}selected{/if}>Duda</option>
			<option value="janda" {if "janda"==$edit_account.marriage_status}selected{/if}>Janda</option>
		</select>
		<label for="marriage_status" class="color-blue-dark font-11 mt-1">{$lang.marriage_status}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="spouse_name" type="text" class="form-control validate-text" id="spouse_name" placeholder="{$lang.spouse_name}" value="{$edit_account.spouse_name}">
		<label for="spouse_name" class="color-blue-dark font-11 mt-1">{$lang.spouse_name}</label>
		<em class="">({$lang.optional})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="spouse_job_id" name="spouse_job_id" class="form-control validate-text" >
			<option value="">Tidak Ada</option>
			{foreach from=$allEmployements key=key item=ae}
			<option value="{$key}" {if $key==$edit_account.spouse_job_id}selected{/if}>{$ae}</option>
			{/foreach}
		</select>
		<label for="spouse_job_id" class="color-blue-dark font-11 mt-1">{$lang.spouse_job}</label>
		<em class="">({$lang.optional})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="npwp" type="text" class="form-control validate-text" id="npwp" placeholder="{$lang.npwp}" value="{$edit_account.npwp}">
		<label for="npwp" class="color-blue-dark font-11 mt-1">{$lang.npwp}</label>
		<em class="">({$lang.optional})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="address_teacher" type="text" class="form-control validate-text" id="address_teacher" placeholder="{$lang.address}" value="{$edit_account.address_teacher}">
		<label for="address_teacher" class="color-blue-dark font-11 mt-1">{$lang.address}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="row mb-0">
		<div class="col-6">
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="number" class="form-control validate-number" id="rt" name="rt" placeholder="RT" value="{$edit_account.rt}">
				<label for="rt" class="color-blue-dark font-11 mt-1">RT</label>
				<em>({$lang.required})</em>
			</div>
		</div>
		<div class="col-6">
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="number" class="form-control validate-number" id="rw" name="rw" placeholder="RW"   value="{$edit_account.rw}">
				<label for="rw" class="color-blue-dark font-11 mt-1">RW</label>
				<em>({$lang.required})</em>
			</div>
		</div>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="sub_village" class="form-control validate-text" id="sub_village" placeholder="{$lang.sub_village}" value="{$edit_account.sub_village}">
		<label for="sub_village" class="color-blue-dark font-11 mt-1">{$lang.sub_village}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="village" class="form-control validate-text" id="village" placeholder="{$lang.village}" value="{$edit_account.village}">
		<label for="village" class="color-blue-dark font-11 mt-1">{$lang.village}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="sub_district" class="form-control validate-text" id="sub_district" placeholder="{$lang.sub_district}" value="{$edit_account.sub_district}">
		<label for="sub_district" class="color-blue-dark font-11 mt-1">{$lang.sub_district}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="district" class="form-control validate-text" id="district" placeholder="{$lang.district}" value="{$edit_account.district}">
		<label for="district" class="color-blue-dark font-11 mt-1">{$lang.district}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="postal_code" class="form-control validate-text" id="postal_code" placeholder="{$lang.postal_code}" value="{$edit_account.postal_code}">
		<label for="postal_code" class="color-blue-dark font-11 mt-1">{$lang.postal_code}</label>
		<em>({$lang.required})</em>
	</div>

	</div>
</div>

<div class="card card-style">
	<div class="content mb-0">
		<div class="d-block">			
      		<input type="hidden" value="do_account_update" name="act">
      		<input type="hidden" value="{$edit_account.id}" name="tid" id="tid">
			<button type="submit" data-action="skip" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">{$lang.save} {$lang.data} {$lang.account}</button>
		</div>
	</div>
</div>
</form>
{/if}
{include file="footer.tpl"}
{literal}
<script>
document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('AccountEditform');
    if (!form) return;

    form.addEventListener('submit', function (e) {
        e.preventDefault();

        const tid = document.getElementById('tid');
        if (!tid || tid.value.trim().length === 0) {
            showAlert("Error", "ID tidak ditemukan!");
            return;
        }

        const formData = new FormData(form);
        const formDataUrl = form.getAttribute('data-action');

        const xhr = new XMLHttpRequest();
        xhr.open("POST", formDataUrl, true);
        xhr.onload = function () {
            if (xhr.status === 200) {
                try {
                    const response = JSON.parse(xhr.responseText);
                    if (response.result === 'success') {
                        showAlert("Sukses", response.msg);
                    } else {
                        showAlert("Error", response.msg);
                    }
                } catch (e) {
                    console.error('Gagal parse JSON:', e);
                    showAlert("Error", "Gagal memproses data dari server");
                }
            }
        };
        xhr.send(formData);
    });
});
</script>
{/literal}