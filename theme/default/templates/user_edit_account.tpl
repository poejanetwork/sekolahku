{include file="header1.tpl"}
{if $edit_account}
<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">{$lang.update} {$lang.account}</h5>
	<div class="clearfix"></div>
		<div class="d-flex">
			<div class="text-center">
				<a href='{"?p=edit_account&avatar"|surl}'><img src='{$edit_account.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block"></a>
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$edit_account.fullname}</h2>
				<p class="font-11 mt-n0 color-highlight">{$edit_account.email}</p>
			</div>
		</div>
	</div>
</div>

<div id="tab-group-2">
<div class="card card-style">
	<div class="tab-controls tabs-small tabs-rounded" data-highlight="bg-teal-dark">
		<a href="#" data-active="" data-bs-toggle="collapse" data-bs-target="#data-lain" class="bg-teal-dark no-click">Pegawai</a>
		<a href="#" data-bs-toggle="collapse" data-bs-target="#data-identitas">Utama</a>
		<a href="#" data-bs-toggle="collapse" data-bs-target="#data-profile">Pribadi</a>
	</div>
</div>

<div class="clearfix mb-3"></div>

<form class="AccountEditform" method="post" id="AccountEditform" autocomplete="off" action='{"?p=edit_account"|surl}'>
<div class="card card-style">
<div class="content mb-0 mt-3">
	
	<div data-bs-parent="#tab-group-2" class="collapse show" id="data-lain">
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input type="text" class="form-control validate-text" id="assignment_letter_number" placeholder="{$lang.assignment_letter_number}" value="{$edit_account.assignment_letter_number}" readonly>
			<label for="assignment_letter_number" class="color-blue-dark font-11 mt-1">{$lang.assignment_letter_number}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="assignment_letter_date" type="date" class="form-control validate-date" id="assignment_letter_date" placeholder="{$lang.assignment_letter_date}" value="{$edit_account.assignment_letter_date}" readonly>
			<label for="assignment_letter_date" class="color-blue-dark font-11 mt-1">{$lang.assignment_letter_date}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="assignment_start_date" type="date" class="form-control validate-date" id="assignment_start_date" placeholder="{$lang.assignment_start_date}" value="{$edit_account.assignment_start_date}" readonly>
			<label for="assignment_start_date" class="color-blue-dark font-11 mt-1">{$lang.assignment_start_date}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input type="text" class="form-control validate-text" id="nip" placeholder="{$lang.nip}" value="{$edit_account.nip}" readonly>
			<label for="nip" class="color-blue-dark font-11 mt-1">{$lang.nip}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input type="text" class="form-control validate-text" id="niy" placeholder="{$lang.niy}" value="{$edit_account.niy}" readonly>
			<label for="niy" class="color-blue-dark font-11 mt-1">{$lang.niy}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input type="text" class="form-control validate-text" id="nuptk" placeholder="{$lang.nuptk}" value="{$edit_account.niy}" readonly>
			<label for="nuptk" class="color-blue-dark font-11 mt-1">{$lang.nuptk}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<select id="employment_status_id" class="form-control validate-text" disabled>
				{foreach from=$allEmployementsStatus key=key item=aes}
				<option value="{$key}" {if $key==$edit_account.employment_status_id}selected{/if}>{$aes}</option>
				{/foreach}
			</select>
			<label for="employment_status_id" class="color-blue-dark font-11 mt-1">{$lang.employee_status}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<select id="employment_type_id" name="employment_type_id" class="form-control validate-text" disabled>
				{foreach from=$allEmployementsTypes key=key item=aet}
				<option value="{$key}" {if $key==$edit_account.employment_type_id}selected{/if}>{$aet}</option>
				{/foreach}
			</select>
			<label for="employment_type_id" class="color-blue-dark font-11 mt-1">{$lang.employee_type}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input type="text" class="form-control validate-text" id="decree_appointment" placeholder="{$lang.decree_appointment}" value="{$edit_account.decree_appointment}" readonly>
			<label for="decree_appointment" class="color-blue-dark font-11 mt-1">{$lang.decree_appointment}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="decree_appointment_date" type="date" class="form-control validate-date" id="decree_appointment_date" placeholder="{$lang.decree_appointment_date}" value="{$edit_account.decree_appointment_date}" readonly>
			<label for="decree_appointment_date" class="color-blue-dark font-11 mt-1">{$lang.decree_appointment_date}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<select id="special_need_id" name="special_need_id" class="form-control validate-text">
				{foreach from=$allSpecialNeeds key=key item=asn}
				<option value="{$key}" {if $key==$edit_account.special_need_id}selected{/if}>{$asn}</option>
				{/foreach}
			</select>
			<label for="special_need_id" class="color-blue-dark font-11 mt-1">{$lang.special_need}</label>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<select id="headmaster_license" name="headmaster_license" class="form-control validate-text" disabled>
				<option value="1" {if "1"==$edit_account.headmaster_license}selected{/if}>Ya</option>
				<option value="0" {if "0"==$edit_account.headmaster_license}selected{/if}>Tidak</option>
			</select>
			<label for="headmaster_license" class="color-blue-dark font-11 mt-1">{$lang.headmaster_license}</label>
		</div>
	</div>

	<div data-bs-parent="#tab-group-2" class="collapse" id="data-identitas">
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
			<input name="npwp" type="text" class="form-control validate-text" id="npwp" placeholder="{$lang.npwp}" value="{$edit_account.npwp}">
			<label for="npwp" class="color-blue-dark font-11 mt-1">{$lang.npwp}</label>
			<em class="">({$lang.optional})</em>
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
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="mother_name" type="text" class="form-control validate-text" id="mother_name" placeholder="{$lang.parents_mother_name}" value="{$edit_account.mother_name}">
			<label for="mother_name" class="color-blue-dark font-11 mt-1">{$lang.parents_mother_name}</label>
			<em class="">({$lang.optional})</em>
		</div>
	</div>

	<div data-bs-parent="#tab-group-2" class="collapse" id="data-profile">

		<h5 class="float-start font-16">Data Profil</h5>
		<div class="clearfix"></div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="email" type="email" class="form-control validate-email" id="email" placeholder="{$lang.email}" value="{$edit_account.email}">
			<label for="email" class="color-blue-dark font-11 mt-1">{$lang.email}</label>
			<em class="">({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="phone" type="number" class="form-control validate-number" id="phone" placeholder="{$lang.phone}" value="{$edit_account.phone}">
			<label for="phone" class="color-blue-dark font-11 mt-1">{$lang.phone}</label>
			<em class="">({$lang.optional})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="mobile_phone" type="number" class="form-control validate-number" id="mobile_phone" placeholder="{$lang.phone_number}" value="{$edit_account.mobile_phone}">
			<label for="mobile_phone" class="color-blue-dark font-11 mt-1">{$lang.phone_number}</label>
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
			<select id="marriage_status_id" name="marriage_status_id" class="form-control validate-text" >
				{foreach from=$allMarriageStatus key=key item=am}
				<option value="{$key}" {if $key==$edit_account.marriage_status_id}selected{/if}>{$am}</option>
				{/foreach}
			</select>
			<label for="marriage_status_id" class="color-blue-dark font-11 mt-1">{$lang.marriage_status}</label>
			<em class="">({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<input name="spouse_name" type="text" class="form-control validate-text" id="spouse_name" placeholder="{$lang.spouse_name}" value="{$edit_account.spouse_name}">
			<label for="spouse_name" class="color-blue-dark font-11 mt-1">{$lang.spouse_name}</label>
			<em class="">({$lang.optional})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-active mt-2">
			<select id="spouse_job_id" name="spouse_job_id" class="form-control validate-text" >
				{foreach from=$allEmployements key=key item=ae}
				<option value="{$key}" {if $key==$edit_account.spouse_job_id}selected{/if}>{$ae}</option>
				{/foreach}
			</select>
			<label for="spouse_job_id" class="color-blue-dark font-11 mt-1">{$lang.spouse_job}</label>
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
</div>
{/if}
{include file="footer.tpl"}