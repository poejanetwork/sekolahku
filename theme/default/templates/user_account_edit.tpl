{include file="header1.tpl"}
{if $account_edit}
<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">{$lang.update} {$lang.account}</h5>
	<div class="clearfix"></div>
		<div class="d-flex">
			<div class="text-center">
				<a href='{"?p=account_edit&id={$account_edit.id}&avatar"|surl}'><img data-src='{$account_edit.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="preload-img mx-2 bg-highlight rounded-xl d-block"></a>
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$account_edit.fullname}</h2>
				<p class="font-11 mt-n0 color-blue-dark font-11 mt-1">{$account_edit.email}</p>
			</div>
		</div>
	</div>
</div>

<div id="tab-group-2">
<div class="card card-style">
	<div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-teal-dark">
		<a href="#" data-active="" data-bs-toggle="collapse" data-bs-target="#data-identitas" class="bg-teal-dark no-click">Utama</a>
		<a href="#" data-bs-toggle="collapse" data-bs-target="#data-profile">Pribadi</a>
		<a href="#" data-bs-toggle="collapse" data-bs-target="#data-ortu">{if $account_edit.parents_type}Orang Tua{else}Wali{/if}</a>
		<a href="#" data-bs-toggle="collapse" data-bs-target="#data-lain" class="collapsed" aria-expanded="false">Lainnya</a>
	</div>
</div>

<div class="clearfix mb-3"></div>

<form class="AccountEditform" method="post" id="AccountEditform" autocomplete="off" action='{"?p=account_edit"|surl}'>

<div class="card card-style">
<div class="content mb-0 mt-3">
	
	<div data-bs-parent="#tab-group-2" class="collapse show" id="data-identitas">
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

	<div data-bs-parent="#tab-group-2" class="collapse" id="data-profile">
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
			<input name="birth_order" type="number" step="any" class="form-control validate-date" id="birth_order" placeholder="{$lang.birth_order}" value="{$account_edit.birth_order}">
			<label for="birth_order" class="color-blue-dark font-11 mt-1">{$lang.birth_order}</label>
			<em class="">({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="sibling_number" type="number" step="any" class="form-control validate-date" id="sibling_number" placeholder="{$lang.sibling_number}" value="{$account_edit.sibling_number}">
			<label for="sibling_number" class="color-blue-dark font-11 mt-1">{$lang.sibling_number}</label>
			<em class="">({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="phone" type="number" step="any" class="form-control validate-number" id="phone" placeholder="{$lang.phone_number}" value="{$account_edit.phone}">
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
					<input type="number" step="any" class="form-control validate-number" id="rt" name="rt" placeholder="RT" value="{$account_edit.rt}">
					<label for="rt" class="color-blue-dark font-11 mt-1">RT</label>
					<em>({$lang.required})</em>
				</div>
			</div>
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-active mt-2">
					<input type="number" step="any" class="form-control validate-number" id="rw" name="rw" placeholder="RW"   value="{$account_edit.rw}">
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

	<div data-bs-parent="#tab-group-2" class="collapse" id="data-ortu">
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
		
		<div id="parents_type1" class="">
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="text" class="form-control" id="parents_father_name" name="parents_father_name" placeholder="{$lang.parents_father_name}" value="{$account_edit.parents_father_name}" autocomplete="off" >
				<label for="parents_father_name" class="color-blue-dark font-11 mt-1">{$lang.parents_father_name}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="parents_father_birth_year" name="parents_father_birth_year" placeholder="{$lang.birth_year}" value="{$account_edit.parents_father_birth_year}" autocomplete="off" required>
						<label for="parents_father_birth_year" class="color-blue-dark font-11 mt-1">{$lang.birth_year}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="parents_father_education_id" name="parents_father_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $key==$account_edit.parents_father_education_id}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="parents_father_education_id" class="color-blue-dark font-11 mt-1">{$lang.educations}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<select id="parents_father_employment_id" name="parents_father_employment_id" class="form-control validate-text" >
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $key==$account_edit.parents_father_employment_id}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="parents_father_employment_id" class="color-blue-dark font-11 mt-1">{$lang.parents_father_job}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input name="parents_father_phone" type="number" step="any" class="form-control validate-number" id="parents_father_phone" placeholder="{$lang.parents_father_phone}" value="{$account_edit.parents_father_phone}">
				<label for="parents_father_phone" class="color-blue-dark font-11 mt-1">{$lang.parents_father_phone}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input name="parents_father_nik" type="number" step="any" class="form-control validate-number" id="parents_father_nik" placeholder="{$lang.number} {$lang.nik}" value="{$account_edit.parents_father_nik}">
				<label for="parents_father_nik" class="color-blue-dark font-11 mt-1">{$lang.number} {$lang.nik}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input type="text" class="form-control" id="parents_mother_name" name="parents_mother_name" placeholder="{$lang.parents_mother_name}" value="{$account_edit.parents_mother_name}" autocomplete="off" >
				<label for="parents_mother_name" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_name}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="parents_mother_birth_year" name="parents_mother_birth_year" placeholder="{$lang.birth_year}" value="{$account_edit.parents_mother_birth_year}" autocomplete="off" required>
						<label for="parents_mother_birth_year" class="color-blue-dark font-11 mt-1">{$lang.birth_year}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="parents_mother_education_id" name="parents_mother_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $key==$account_edit.parents_mother_education_id}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="parents_mother_education_id" class="color-blue-dark font-11 mt-1">{$lang.educations}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<select id="parents_mother_employment_id" name="parents_mother_employment_id" class="form-control validate-text" >
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $key==$account_edit.parents_mother_employment_id}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="parents_mother_employment_id" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_job}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input name="parents_mother_phone" type="number" step="any" class="form-control validate-number" id="parents_mother_phone" placeholder="{$lang.parents_mother_phone}" value="{$account_edit.parents_mother_phone}">
				<label for="parents_mother_phone" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_phone}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<input name="parents_mother_nik" type="number" step="any" class="form-control validate-number" id="parents_mother_nik" placeholder="{$lang.number} {$lang.nik}" value="{$account_edit.parents_mother_nik}">
				<label for="parents_mother_nik" class="color-blue-dark font-11 mt-1">{$lang.number} {$lang.nik}</label>
				<em class="">({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-active mt-2">
				<textarea type="text" name="address_parent" class="form-control validate-tel" id="address_parent" placeholder="{$lang.address_parents}" value="{$account_edit.address_parent}" ></textarea>
				<label for="address_parent" class="color-blue-dark font-11 mt-1">{$lang.address_parents}</label>
				<em>({$lang.required})</em>
			</div>
		</div>
		<div id="parents_type0" class="">
			<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
				<input type="text" class="form-control validate-name" id="guardian_name" name="guardian_name" placeholder="{$lang.guardian_name}" value="{$account_edit.guardian_name}" autocomplete="off" required>
				<label for="guardian_name" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.guardian_name}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="guardian_birth_year" name="guardian_birth_year" placeholder="{$lang.birth_year}" value="{$account_edit.guardian_birth_year}" autocomplete="off" required>
						<label for="guardian_birth_year" class="color-blue-dark font-11 mt-1">{$lang.birth_year}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="guardian_education_id" name="guardian_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $key==$account_edit.guardian_education_id}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="guardian_education_id" class="color-blue-dark font-11 mt-1">{$lang.educations}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<select id="guardian_employment_id" name="guardian_employment_id" class="form-control validate-text" required>
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $key==$account_edit.guardian_employment_id}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="guardian_employment_id" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.guardian_job}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="guardian_phone" class="form-control validate-number" id="guardian_phone" placeholder="{$lang.mobile_phone}" value="{$account_edit.guardian_phone}" autocomplete="off" required>
				<label for="guardian_phone" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.mobile_phone}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="guardian_nik" class="form-control validate-number" id="guardian_nik" placeholder="{$lang.number} {$lang.nik}" value="{$account_edit.guardian_nik}" autocomplete="off" required>
				<label for="guardian_nik" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.number} {$lang.nik}</label>
				<em>({$lang.required})</em>
			</div>
		</div>
	</div>

	<div data-bs-parent="#tab-group-2" class="collapse" id="data-lain">

		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="height" class="form-control validate-number" id="height" placeholder="{$lang.height}" value="{$account_edit.height}" autocomplete="off" required>
			<label for="height" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.height}</label>
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="weight" class="form-control validate-number" id="weight" placeholder="{$lang.weight}" value="{$account_edit.weight}" autocomplete="off" required>
			<label for="weight" class="color-blue-dark font-11 mt-1 font-400 font-13">{$lang.weight}</label>
			<em>({$lang.required})</em>
		</div>
		
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
</div>
{/if}
{include file="footer.tpl"}
{literal}
<script>
document.addEventListener("DOMContentLoaded", function() {
	document.getElementById('parents_type').addEventListener('change', function() {
		var val = this.value;
		document.getElementById('parents_type1').classList.add('d-none');
		document.getElementById('parents_type0').classList.add('d-none');
		if (val === "1") {
			document.getElementById('parents_type1').classList.remove('d-none');
		} else if (val === "0") {
			document.getElementById('parents_type0').classList.remove('d-none');
		}
	});
});
</script>
{/literal}