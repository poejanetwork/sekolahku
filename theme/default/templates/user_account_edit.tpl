{include file="header1.tpl"}
{if $account_edit}
<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">{$lang.update} {$lang.account}</h5>
	<div class="clearfix"></div>
		<div class="d-flex">
			<div class="text-center">
				<img src='{$account_edit.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block">
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$account_edit.fullname}</h2>
				<p class="font-11 mt-n0 color-highlight">{$account_edit.email}</p>
			</div>
		</div>
	</div>
</div>

<form class="AccountEditform" method="post" id="AccountEditform" autocomplete="off" data-action='{"?p=account_edit"|surl}'>
  {$token}
<div class="card card-style">
<div class="content mb-0 mt-3">
	<h5 class="float-start font-16">Data Utama</h5>
	<div class="clearfix"></div>
	<div class="input-style has-borders no-icon input-style-active">
		<input name="fullname" type="name" class="form-control validate-name" id="fullname" placeholder="{$lang.fullname}" value="{$account_edit.fullname}">
		<label for="fullname" class="color-blue-dark font-11 mt-1">{$lang.fullname}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="nis" type="text" class="form-control validate-text" id="nis" placeholder="{$lang.nis}" value="{$account_edit.nis}">
		<label for="nis" class="color-blue-dark font-11 mt-1">{$lang.nis}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="nisn" type="text" class="form-control validate-text" id="nisn" placeholder="{$lang.nisn}" value="{$account_edit.nisn}">
		<label for="nisn" class="color-blue-dark font-11 mt-1">{$lang.nisn}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="prev_school_name" type="text" class="form-control validate-text" id="prev_school_name" placeholder="{$lang.prev_school_name}" value="{$account_edit.prev_school_name}">
		<label for="prev_school_name" class="color-blue-dark font-11 mt-1">{$lang.prev_school_name}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="prev_school_address" type="text" class="form-control validate-text" id="prev_school_address" placeholder="{$lang.prev_school_address}" value="{$account_edit.prev_school_address}">
		<label for="prev_school_address" class="color-blue-dark font-11 mt-1">{$lang.prev_school_address}</label>
		<em class="">({$lang.required})</em>
	</div>
	</div>
</div>


<div class="card card-style">
<div class="content mb-0 mt-3">
	<h5 class="float-start font-16">Data Pribadi</h5>
	<div class="clearfix"></div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="sex" name="sex" class="form-control validate-text" >
			<option value="L" {if "L"==$account_edit.sex}selected{/if}>Laki-laki</option>
			<option value="P" {if "P"==$account_edit.sex}selected{/if}>Perempuan</option>
		</select>
		<label for="sex" class="color-blue-dark font-11 mt-1">{$lang.sex}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="email" type="email" class="form-control validate-email" id="email" placeholder="{$lang.email}" value="{$account_edit.email}">
		<label for="email" class="color-blue-dark font-11 mt-1">{$lang.email}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="birthday_place" type="text" class="form-control validate-text" id="birthday_place" placeholder="{$lang.birthday_place}" value="{$account_edit.birthday_place}">
		<label for="birthday_place" class="color-blue-dark font-11 mt-1">{$lang.birthday_place}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="birthday" type="date" class="form-control validate-date" id="birthday" placeholder="{$lang.birthday}" value="{$account_edit.birthday}">
		<label for="birthday" class="color-blue-dark font-11 mt-1">{$lang.birthday}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="phone" type="number" class="form-control validate-number" id="phone" placeholder="{$lang.phone_number}" value="{$account_edit.phone}">
		<label for="phone" class="color-blue-dark font-11 mt-1">{$lang.phone_number}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="religion_id" name="religion_id" class="form-control validate-text" >
			{foreach from=$allReligions key=key item=ar}
			<option value="{$key}" {if $key==$account_edit.religion_id}selected{/if}>{$ar}</option>
			{/foreach}
		</select>
		<label for="religion_id" class="color-blue-dark font-11 mt-1">{$lang.religion}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="special_treatment_id" name="special_treatment_id" class="form-control validate-text" >
			<option value="0">Tidak Ada</option>
			{foreach from=$allSpecialNeeds key=key item=asn}
			<option value="{$key}" {if $key==$account_edit.special_treatment_id}selected{/if}>{$asn}</option>
			{/foreach}
		</select>
		<label for="special_treatment_id" class="color-blue-dark font-11 mt-1">{$lang.special_treatment}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="address_user" type="text" class="form-control validate-text" id="address_user" placeholder="{$lang.address}" value="{$account_edit.address_user}">
		<label for="address_user" class="color-blue-dark font-11 mt-1">{$lang.address}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="row mb-0">
		<div class="col-6">
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="number" class="form-control validate-number" id="rt" name="rt" placeholder="RT" value="{$account_edit.rt}">
				<label for="rt" class="color-blue-dark font-11 mt-1">RT</label>
				<em>({$lang.required})</em>
			</div>
		</div>
		<div class="col-6">
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="number" class="form-control validate-number" id="rw" name="rw" placeholder="RW"   value="{$account_edit.rw}">
				<label for="rw" class="color-blue-dark font-11 mt-1">RW</label>
				<em>({$lang.required})</em>
			</div>
		</div>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="sub_village" class="form-control validate-text" id="sub_village" placeholder="{$lang.sub_village}" value="{$account_edit.sub_village}">
		<label for="sub_village" class="color-blue-dark font-11 mt-1">{$lang.sub_village}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="village" class="form-control validate-text" id="village" placeholder="{$lang.village}" value="{$account_edit.village}">
		<label for="village" class="color-blue-dark font-11 mt-1">{$lang.village}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="sub_district" class="form-control validate-text" id="sub_district" placeholder="{$lang.sub_district}" value="{$account_edit.sub_district}">
		<label for="sub_district" class="color-blue-dark font-11 mt-1">{$lang.sub_district}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="district" class="form-control validate-text" id="district" placeholder="{$lang.district}" value="{$account_edit.district}">
		<label for="district" class="color-blue-dark font-11 mt-1">{$lang.district}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" name="postal_code" class="form-control validate-text" id="postal_code" placeholder="{$lang.postal_code}" value="{$account_edit.postal_code}">
		<label for="postal_code" class="color-blue-dark font-11 mt-1">{$lang.postal_code}</label>
		<em>({$lang.required})</em>
	</div>

	</div>
</div>


<div class="card card-style">
<div class="content mb-0 mt-3">
	<h5 class="float-start font-16">Data Orang Tua/Wali</h5>
	<div class="clearfix"></div>
	<div class="input-style has-borders no-icon input-style-active">
		<select id="parents_type" name="parents_type" class="form-control" >
			<option value="1" {if 1==$account_edit.parents_type}selected{/if}>Kandung</option>
			<option value="0" {if 0==$account_edit.parents_type}selected{/if}>Wali</option>
		</select>
		<label for="parents_type" class="color-blue-dark font-11 mt-1">{$lang.parents_type}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" class="form-control" id="parents_father_name" name="parents_father_name" placeholder="{$lang.parents_father_name}" value="{$account_edit.parents_father_name}" autocomplete="off" >
		<label for="parents_father_name" class="color-blue-dark font-11 mt-1">{$lang.parents_father_name}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="parents_father_job_id" name="parents_father_job_id" class="form-control validate-text" >
			<option value="0">Tidak Ada</option>
			{foreach from=$allEmployements key=key item=ae}
			<option value="{$key}" {if $key==$account_edit.parents_father_job_id}selected{/if}>{$ae}</option>
			{/foreach}
		</select>
		<label for="parents_father_job_id" class="color-blue-dark font-11 mt-1">{$lang.parents_father_job}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="parents_father_phone" type="number" class="form-control validate-number" id="parents_father_phone" placeholder="{$lang.parents_father_phone}" value="{$account_edit.parents_father_phone}">
		<label for="parents_father_phone" class="color-blue-dark font-11 mt-1">{$lang.parents_father_phone}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input type="text" class="form-control" id="parents_mother_name" name="parents_mother_name" placeholder="{$lang.parents_mother_name}" value="{$account_edit.parents_mother_name}" autocomplete="off" >
		<label for="parents_mother_name" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_name}</label>
		<em>({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<select id="parents_mother_job_id" name="parents_mother_job_id" class="form-control validate-text" >
			<option value="0">Tidak Ada</option>
			{foreach from=$allEmployements key=key item=ae}
			<option value="{$key}" {if $key==$account_edit.parents_mother_job_id}selected{/if}>{$ae}</option>
			{/foreach}
		</select>
		<label for="parents_mother_job_id" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_job}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<input name="parents_mother_phone" type="number" class="form-control validate-number" id="parents_mother_phone" placeholder="{$lang.parents_mother_phone}" value="{$account_edit.parents_mother_phone}">
		<label for="parents_mother_phone" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_phone}</label>
		<em class="">({$lang.required})</em>
	</div>
	<div class="input-style has-borders no-icon input-style-active mt-2">
		<textarea type="text" name="address_parent" class="form-control validate-tel" id="address_parent" placeholder="{$lang.address_parents}" value="{$account_edit.address_parent}" ></textarea>
		<label for="address_parent" class="color-blue-dark font-11 mt-1">{$lang.address_parents}</label>
		<em>({$lang.required})</em>
	</div>
	
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<div class="d-block">			
      		<input type="hidden" value="do_account_update" name="act">
      		<input type="hidden" value="{$account_edit.id}" name="sid" id="sid">
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

        const sid = document.getElementById('sid');
        if (!sid || sid.value.trim().length === 0) {
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