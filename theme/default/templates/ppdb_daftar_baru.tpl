{include file="header1.tpl"}
{if $ppdb_settings.status}
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
			
			
			<em>({$lang.required})</em>
		</div>
		<div id="achievement_wrapper" class="input-style has-borders no-icon input-style-always-active validate-field mb-4 d-none">
			<textarea type="text" name="achievement" class="form-control validate-text" id="achievement" placeholder="{$lang.achievement_desc}" ></textarea>
			<label for="achievement" class="color-highlight font-400 font-13">{$lang.achievement}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_name" name="prev_school_name" placeholder="{$lang.prev_school_name}" value="" autocomplete="off" required>
			<label for="prev_school_name" class="color-highlight font-400 font-13">{$lang.prev_school_name}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_address" name="prev_school_address" placeholder="{$lang.prev_school_address}" value="" autocomplete="off" required>
			<label for="prev_school_address" class="color-highlight font-400 font-13">{$lang.prev_school_address}</label>
			
			
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
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-tel mb-4">
			<input type="number" step="any" class="form-control validate-name" id="nisn" name="nisn" placeholder="{$lang.nisn}" value="" autocomplete="off" required>
			<label for="nisn" class="color-highlight font-400 font-13">{$lang.nisn}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-password mb-4">
			<input type="text" class="form-control validate-name" id="password" name="password" placeholder="{$lang.password}" value="" autocomplete="off" required>
			<label for="password" class="color-highlight font-400 font-13">{$lang.password}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-email mb-4">
			<input type="email" class="form-control validate-name" id="email" name="email" placeholder="{$lang.email}" value="" autocomplete="off" required>
			<label for="email" class="color-highlight font-400 font-13">{$lang.email}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="sex" name="sex" class="form-control validate-text" required>
				<option value="L">Laki-laki</option>
				<option value="P">Perempuan</option>
			</select>
			<label for="sex" class="color-highlight font-400 font-13">{$lang.sex}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="birthday_place" class="form-control validate-tel" id="birthday_place" placeholder="{$lang.birthday_place}" autocomplete="off" required>
			<label for="birthday_place" class="color-highlight font-400 font-13">{$lang.birthday_place}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="date" name="birthday" class="form-control validate-text" id="birthday" placeholder="{$lang.birthday}" autocomplete="off" required>
			<label for="birthday" class="color-highlight font-400 font-13">{$lang.birthday}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="akta_lahir" class="form-control validate-text" id="akta_lahir" placeholder="{$lang.birth_certificate}" autocomplete="off" required>
			<label for="akta_lahir" class="color-highlight font-400 font-13">{$lang.birth_certificate}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="kk_no" class="form-control validate-text" id="kk_no" placeholder="{$lang.kk_no}" autocomplete="off" required>
			<label for="kk_no" class="color-highlight font-400 font-13">{$lang.kk_no}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="birth_order" class="form-control validate-text" id="birth_order" placeholder="{$lang.birth_order}" autocomplete="off" required>
			<label for="birth_order" class="color-highlight font-400 font-13">{$lang.birth_order}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="sibling_number" class="form-control validate-text" id="sibling_number" placeholder="{$lang.sibling_number}" autocomplete="off" required>
			<label for="sibling_number" class="color-highlight font-400 font-13">{$lang.sibling_number}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="mobile_phone" class="form-control validate-number" id="mobile_phone" placeholder="{$lang.phone_number}" autocomplete="off" required>
			<label for="mobile_phone" class="color-highlight font-400 font-13">{$lang.phone_number}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="religion_id" name="religion_id" class="form-control validate-text" required>
				{foreach from=$allReligions key=key item=ar}
				<option value="{$key}">{$ar}</option>
				{/foreach}
			</select>
			<label for="religion_id" class="color-highlight font-400 font-13">{$lang.religion}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="row mb-0">
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" step="any" class="form-control validate-number" id="weight" name="weight" placeholder="{$lang.weight}" autocomplete="off" required>
					<label for="weight" class="color-highlight">{$lang.weight}</label>
					
					
					<em>({$lang.required})</em>
				</div>
			</div>
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" step="any" class="form-control validate-number" id="height" name="height" placeholder="{$lang.height}" autocomplete="off" required>
					<label for="height" class="color-highlight">{$lang.height}</label>
					
					
					<em>({$lang.required})</em>
				</div>
			</div>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="special_treatment_id" name="special_treatment_id" class="form-control validate-text" required>
				<option value="0">Tidak Ada</option>
				{foreach from=$allSpecialNeeds key=key item=asn}
					<option value="{$key}" {if $asn == "Tidak Ada"}selected{/if}>{$asn}</option>
				{/foreach}
			</select>
			<label for="special_treatment_id" class="color-highlight font-400 font-13">{$lang.special_treatment}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<textarea type="text" name="address_user" class="form-control validate-tel" id="address_user" placeholder="{$lang.address}" autocomplete="off" required></textarea>
			<label for="address_user" class="color-highlight font-400 font-13">{$lang.address}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="row mb-0">
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" step="any" class="form-control validate-number" id="rt" name="rt" placeholder="RT" autocomplete="off" required>
					<label for="rt" class="color-highlight">RT</label>
					
					
					<em>({$lang.required})</em>
				</div>
			</div>
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" step="any" class="form-control validate-number" id="rw" name="rw"  placeholder="RW" autocomplete="off" required>
					<label for="rw" class="color-highlight">RW</label>
					
					
					<em>({$lang.required})</em>
				</div>
			</div>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_village" class="form-control validate-text" id="sub_village" placeholder="{$lang.sub_village}" autocomplete="off" required>
			<label for="sub_village" class="color-highlight font-400 font-13">{$lang.sub_village}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="village" class="form-control validate-text" id="village" placeholder="{$lang.village}" autocomplete="off" required>
			<label for="village" class="color-highlight font-400 font-13">{$lang.village}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_district" class="form-control validate-text" id="sub_district" placeholder="{$lang.sub_district}" autocomplete="off" required>
			<label for="sub_district" class="color-highlight font-400 font-13">{$lang.sub_district}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="district" class="form-control validate-text" id="district" placeholder="{$lang.district}" autocomplete="off" required>
			<label for="district" class="color-highlight font-400 font-13">{$lang.district}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" step="any" name="postal_code" class="form-control validate-number" id="postal_code" placeholder="{$lang.postal_code}" autocomplete="off" required>
			<label for="postal_code" class="color-highlight font-400 font-13">{$lang.postal_code}</label>
			
			
			<em>({$lang.required})</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<h4 class="mb-3">Data Orang Tua/Wali</h4>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_type" name="parents_type" class="form-control validate-text" required>
				<option value="" disable>Pilih Salah Satu</option>
				<option value="1">Kandung</option>
				<option value="0">Wali</option>
			</select>
			<label for="parents_type" class="color-highlight font-400 font-13">{$lang.parents_type}</label>
			
			
			<em>({$lang.required})</em>
		</div>
		<div id="parents_type1" class="">
			<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
				<input type="text" class="form-control validate-name" id="parents_father_name" name="parents_father_name" placeholder="{$lang.parents_father_name}" value="" autocomplete="off" required>
				<label for="parents_father_name" class="color-highlight font-400 font-13">{$lang.parents_father_name}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="parents_father_birth_year" name="parents_father_birth_year" placeholder="{$lang.birth_year}" autocomplete="off" required>
						<label for="parents_father_birth_year" class="color-highlight">{$lang.birth_year}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="parents_father_education_id" name="parents_father_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="parents_father_education_id" class="color-highlight">{$lang.educations}</label>
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<select id="parents_father_employment_id" name="parents_father_employment_id" class="form-control validate-text" required>
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="parents_father_employment_id" class="color-highlight font-400 font-13">{$lang.parents_father_job}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="parents_father_phone" class="form-control validate-number" id="parents_father_phone" placeholder="{$lang.parents_father_phone}" autocomplete="off" required>
				<label for="parents_father_phone" class="color-highlight font-400 font-13">{$lang.parents_father_phone}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="parents_father_nik" class="form-control validate-number" id="parents_father_nik" placeholder="{$lang.number} {$lang.nik}" autocomplete="off" required>
				<label for="parents_father_nik" class="color-highlight font-400 font-13">{$lang.number} {$lang.nik}</label>
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
				<input type="text" class="form-control validate-name" id="parents_mother_name" name="parents_mother_name" placeholder="{$lang.parents_mother_name}" value="" autocomplete="off" required>
				<label for="parents_mother_name" class="color-highlight font-400 font-13">{$lang.parents_mother_name}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="parents_mother_birth_year" name="parents_mother_birth_year" placeholder="{$lang.birth_year}" autocomplete="off" required>
						<label for="parents_mother_birth_year" class="color-highlight">{$lang.birth_year}</label>
						
						
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="parents_mother_education_id" name="parents_mother_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="parents_mother_education_id" class="color-highlight">{$lang.educations}</label>
						
						
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<select id="parents_mother_employment_id" name="parents_mother_employment_id" class="form-control validate-text" required>
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="parents_mother_employment_id" class="color-highlight font-400 font-13">{$lang.parents_mother_job}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="parents_mother_phone" class="form-control validate-number" id="parents_mother_phone" placeholder="{$lang.parents_mother_phone}" autocomplete="off" required>
				<label for="parents_mother_phone" class="color-highlight font-400 font-13">{$lang.parents_mother_phone}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="parents_mother_nik" class="form-control validate-number" id="parents_mother_nik" placeholder="{$lang.number} {$lang.nik}" autocomplete="off" required>
				<label for="parents_mother_nik" class="color-highlight font-400 font-13">{$lang.number} {$lang.nik}</label>
				
				
				<em>({$lang.required})</em>
			</div>
		</div>
		<div id="parents_type0" class="">
			<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
				<input type="text" class="form-control validate-name" id="guardian_name" name="guardian_name" placeholder="{$lang.guardian_name}" value="" autocomplete="off" required>
				<label for="guardian_name" class="color-highlight font-400 font-13">{$lang.guardian_name}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="row mb-0">
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<input type="number" step="any" class="form-control validate-number" id="guardian_birth_year" name="guardian_birth_year" placeholder="{$lang.birth_year}" autocomplete="off" required>
						<label for="guardian_birth_year" class="color-highlight">{$lang.birth_year}</label>
						
						
						<em>({$lang.required})</em>
					</div>
				</div>
				<div class="col-6">
					<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
						<select id="guardian_education_id" name="guardian_education_id" class="form-control validate-text" required>
							{foreach from=$allEducations key=key item=ae}
							<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
							{/foreach}
						</select>
						<label for="guardian_education_id" class="color-highlight">{$lang.educations}</label>
						
						
						<em>({$lang.required})</em>
					</div>
				</div>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<select id="guardian_employment_id" name="guardian_employment_id" class="form-control validate-text" required>
					{foreach from=$allEmployements key=key item=ae}
					<option value="{$key}" {if $ae=="Tidak Bekerja"}selected{/if}>{$ae}</option>
					{/foreach}
				</select>
				<label for="guardian_employment_id" class="color-highlight font-400 font-13">{$lang.guardian_job}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="guardian_phone" class="form-control validate-number" id="guardian_phone" placeholder="{$lang.mobile_phone}" autocomplete="off" required>
				<label for="guardian_phone" class="color-highlight font-400 font-13">{$lang.mobile_phone}</label>
				
				
				<em>({$lang.required})</em>
			</div>
			<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
				<input type="number" step="any" name="guardian_nik" class="form-control validate-number" id="guardian_nik" placeholder="{$lang.number} {$lang.nik}" autocomplete="off" required>
				<label for="guardian_nik" class="color-highlight font-400 font-13">{$lang.number} {$lang.nik}</label>
				
				
				<em>({$lang.required})</em>
			</div>
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
			<button type="submit" id="btnProcess" class="btn btn-full w-100 bg-highlight rounded-sm shadow-xl btn-m text-uppercase font-900 mb-3">Simpan Data Pendaftaran</button>
		</div>
	</div>
</div>
</form>
</div>
<div id="result_ppdb" class="d-none card card-style mt-4  mb-5 content rounded-m shadowl">
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
function updateRequiredByParentsType() {
    var val = document.getElementById('parents_type').value;

    var divKandung = document.getElementById('parents_type1');
    var divWali = document.getElementById('parents_type0');

    // Sembunyikan dulu kedua div
    divKandung.classList.add('d-none');
    divWali.classList.add('d-none');

    // Reset semua required dari kedua div
    [divKandung, divWali].forEach(div => {
        if (!div) return;
        div.querySelectorAll('input, select, textarea').forEach(el => {
            el.removeAttribute('required');
        });
    });

    // Tampilkan div sesuai pilihan dan pasang required pada isinya
    if (val === "1") {
        divKandung.classList.remove('d-none');
        divKandung.querySelectorAll('input, select, textarea').forEach(el => {
            el.setAttribute('required', 'required');
        });
    } else if (val === "0") {
        divWali.classList.remove('d-none');
        divWali.querySelectorAll('input, select, textarea').forEach(el => {
            el.setAttribute('required', 'required');
        });
    }
}
document.addEventListener('DOMContentLoaded', updateRequiredByParentsType);

document.addEventListener('DOMContentLoaded', function () {
	document.getElementById('parents_type').addEventListener('change', updateRequiredByParentsType);

	var result_ppdb = document.getElementById('result_ppdb');
	var ppdb_fullname = document.getElementById('ppdb_fullname');
	var ppdb_registration_number = document.getElementById('ppdb_registration_number');
	var ppdb_cetak_formulir = document.getElementById('ppdb_cetak_formulir');
	var _0x7231x109ppdb = document.getElementById('PPDBform');
	var btnSubmit = document.getElementById('btnProcess');

	if(_0x7231x109ppdb){
    _0x7231x109ppdb.addEventListener('submit', function(e){
        e.preventDefault();
		setButtonLoading(btnSubmit);
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

		if (!isValid) {
			showAlert("Error", "Gagal menyimpan, silahkan cek kembali data form dan pastikan semua form terisi.");
			return false;
		} else {
			_0x7231x109ppdb.setAttribute('data-form', 'valid');
		}

		if (_0x7231x109ppdb.getAttribute('data-form') === 'valid') {
			var formData = new FormData(_0x7231x109ppdb);
			var formDataUrl = _0x7231x109ppdb.getAttribute('data-action');
			var xhr = new XMLHttpRequest();
			xhr.open("POST", formDataUrl, true);
			xhr.onload = function () {
				resetButtonLoading(btnSubmit);
				if (xhr.status === 200) {
					try {
						var response = JSON.parse(xhr.responseText);
						if (response.result === 'success') {
							showAlert("Sukses", response.msg);
							ppdb_fullname.innerHTML = response.fullname;
							ppdb_registration_number.innerHTML = response.registration_number;
							ppdb_cetak_formulir.href = response.link;
							_0x7231x109ppdb.classList.add('d-none');
							result_ppdb.classList.remove("d-none");
						} else {
							showAlert("Error", response.msg);
						}
					} catch (e) {
						console.log(e);
						console.error('Gagal parse JSON:', e);
						showAlert("Error", 'Gagal parse JSON:', e);
					}
				}
			};
			xhr.send(formData);
		}
	});
	}

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
	if (isFormChanged) {
		e.preventDefault();
		if (!dialog.confirm(`Data belum disimpan, apakah Anda yakin ingin meninggalkan halaman ini?`)) return;
		preloader["classList"]["add"]('preloader-hide');
	}
});
</script>
{/literal}