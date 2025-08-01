<?php
/* Smarty version 5.4.5, created on 2025-07-28 07:15:18
  from 'file:ppdb_daftar_baru.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_688723865a0994_43979550',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd9d556c11636989cac73d7913971a812396eea67' => 
    array (
      0 => 'ppdb_daftar_baru.tpl',
      1 => 1753686909,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_688723865a0994_43979550 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
if ($_smarty_tpl->getValue('ppdb_settings')['status']) {?>
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
		<h4 class="font-600">FORMULIR PENERIMAAN PESERTA DIDIK BARU GEL. <?php echo $_smarty_tpl->getValue('ppdb_settings')['gelombang'];?>
 TAHUN <?php echo $_smarty_tpl->getValue('ppdb_settings')['tahun_ajaran'];?>
</h4>
	</div>
</div>
<div class="PPDB-form">
<form class="PPDBform" method="post" id="PPDBform" autocomplete="off" data-action='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb&daftar_baru");?>
'>
  <?php echo $_smarty_tpl->getValue('token');?>

<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Registrasi Peserta Didik</h4>
      	<input type="hidden" value="<?php echo $_smarty_tpl->getValue('ppdb_settings')['gelombang'];?>
" name="admission_phase_id">
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="admission_type_id" name="admission_type_id" class="form-control validate-text" >
				<option value="reguler">Reguler</option>
				<option value="prestasi">Prestasi</option>
			</select>
			<label for="admission_type_id" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['admission_type_id'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div id="achievement_wrapper" class="input-style has-borders no-icon input-style-always-active validate-field mb-4 d-none">
			<textarea type="text" name="achievement" class="form-control validate-text" id="achievement" placeholder="<?php echo $_smarty_tpl->getValue('lang')['achievement_desc'];?>
" ></textarea>
			<label for="achievement" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['achievement'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_name" name="prev_school_name" placeholder="<?php echo $_smarty_tpl->getValue('lang')['prev_school_name'];?>
" value="" autocomplete="off" >
			<label for="prev_school_name" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['prev_school_name'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="prev_school_address" name="prev_school_address" placeholder="<?php echo $_smarty_tpl->getValue('lang')['prev_school_address'];?>
" value="" autocomplete="off" >
			<label for="prev_school_address" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['prev_school_address'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
	</div>
</div>
<div class="card card-style mb-2">
	<div class="content mb-0">
		<h4 class="mb-3">Data Pribadi</h4>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="fullname" name="fullname" placeholder="<?php echo $_smarty_tpl->getValue('lang')['fullname'];?>
" value="" autocomplete="off" >
			<label for="fullname" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['fullname'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-tel mb-4">
			<input type="number" class="form-control validate-name" id="nisn" name="nisn" placeholder="<?php echo $_smarty_tpl->getValue('lang')['nisn'];?>
" value="" autocomplete="off" >
			<label for="nisn" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['nisn'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-password mb-4">
			<input type="text" class="form-control validate-name" id="password" name="password" placeholder="<?php echo $_smarty_tpl->getValue('lang')['password'];?>
" value="" autocomplete="off" >
			<label for="password" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['password'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-email mb-4">
			<input type="email" class="form-control validate-name" id="email" name="email" placeholder="<?php echo $_smarty_tpl->getValue('lang')['email'];?>
" value="" autocomplete="off" >
			<label for="email" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['email'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="sex" name="sex" class="form-control validate-text" >
				<option value="L">Laki-laki</option>
				<option value="P">Perempuan</option>
			</select>
			<label for="sex" class="color-highlight font-400 font-13">Jenis Kelamin</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="birthday_place" class="form-control validate-tel" id="birthday_place" placeholder="<?php echo $_smarty_tpl->getValue('lang')['birthday_place'];?>
" >
			<label for="birthday_place" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['birthday_place'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="date" name="birthday" class="form-control validate-text" id="birthday" placeholder="<?php echo $_smarty_tpl->getValue('lang')['birthday'];?>
" >
			<label for="birthday" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['birthday'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="phone" class="form-control validate-tel" id="phone" placeholder="<?php echo $_smarty_tpl->getValue('lang')['phone_number'];?>
" >
			<label for="phone" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['phone_number'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="religion" name="religion" class="form-control validate-text" >
				<option value="budha">Budha</option>
				<option value="hindu">Hindu</option>
				<option value="islam">Islam</option>
				<option value="katholik">Katholik</option>
				<option value="konghucu">Konghucu</option>
				<option value="kristen">Kristen/Protestan</option>
				<option value="lainnya">Lainnya</option>
			</select>
			<label for="religion" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['religion'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="special_treatment" name="special_treatment" class="form-control validate-text" >
				<option value="autis">Autis</option>
				<option value="bakat_istimewa">Bakat Istimewa</option>
				<option value="cerdas_istimewa">Cerdas Istimewa</option>
				<option value="down_sindrome">Down Sindrome</option>
				<option value="hiper_aktif">Hiper aktif</option>
				<option value="indigo">Indigo</option>
				<option value="kesulitan_belajar">Kesulitan Belajar</option>
				<option value="narkoba">Narkoba</option>
				<option value="tidak_ada">Tidak ada</option>
				<option value="tuna_daksa_ringan">Tuna Daksa Ringan</option>
				<option value="tuna_daksa_sedang">Tuna Daksa Sedang</option>
				<option value="tuna_ganda">Tuna ganda</option>
				<option value="tuna_grahita_ringan">Tuna Grahita ringan</option>
				<option value="tuna_grahita_sedang">Tuna Grahita Sedang</option>
				<option value="tuna_laras">Tuna Laras</option>
				<option value="tuna_netra">Tuna Netra</option>
				<option value="tuna_rungu">Tuna Rungu</option>
				<option value="tuna_wicara">Tuna Wicara</option>
			</select>
			<label for="special_treatment" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['special_treatment'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<textarea type="text" name="address_user" class="form-control validate-tel" id="address_user" placeholder="<?php echo $_smarty_tpl->getValue('lang')['address'];?>
" ></textarea>
			<label for="address_user" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['address'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="row mb-0">
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" class="form-control validate-number" id="rt" name="rt" placeholder="RT" >
					<label for="rt" class="color-highlight">RT</label>
					<i class="fa fa-times disabled invalid color-red-dark"></i>
					<i class="fa fa-check disabled valid color-green-dark"></i>
					<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
				</div>
			</div>
			<div class="col-6">
				<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
					<input type="number" class="form-control validate-number" id="rw" name="rw"  placeholder="RW" >
					<label for="rw" class="color-highlight">RW</label>
					<i class="fa fa-times disabled invalid color-red-dark"></i>
					<i class="fa fa-check disabled valid color-green-dark"></i>
					<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
				</div>
			</div>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_village" class="form-control validate-text" id="sub_village" placeholder="<?php echo $_smarty_tpl->getValue('lang')['sub_village'];?>
" >
			<label for="sub_village" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['sub_village'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="village" class="form-control validate-text" id="village" placeholder="<?php echo $_smarty_tpl->getValue('lang')['village'];?>
" >
			<label for="village" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['village'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="sub_district" class="form-control validate-text" id="sub_district" placeholder="<?php echo $_smarty_tpl->getValue('lang')['sub_district'];?>
" >
			<label for="sub_district" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['sub_district'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="text" name="district" class="form-control validate-text" id="district" placeholder="<?php echo $_smarty_tpl->getValue('lang')['district'];?>
" >
			<label for="district" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['district'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="postal_code" class="form-control validate-tel" id="postal_code" placeholder="<?php echo $_smarty_tpl->getValue('lang')['postal_code'];?>
" >
			<label for="postal_code" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['postal_code'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<h4 class="mb-3">Data Orang Tua/Wali</h4>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_type" name="parents_type" class="form-control validate-text" >
				<option value="1">Kandung</option>
				<option value="0">Wali</option>
			</select>
			<label for="parents_type" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_type'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="parents_father_name" name="parents_father_name" placeholder="<?php echo $_smarty_tpl->getValue('lang')['parents_father_name'];?>
" value="" autocomplete="off" >
			<label for="parents_father_name" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_father_name'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_father_job" name="parents_father_job" class="form-control validate-text" >
				<option value="buruh_harian_lepas">Buruh Harian Lepas</option>
				<option value="karyawan_bumn">Karyawan BUMN</option>
				<option value="karyawan_honorer">Karyawan Honorer</option>
				<option value="karyawan_swasta">Karyawan Swasta</option>
				<option value="nelayan">Nelayan</option>
				<option value="pns">PNS</option>
				<option value="pedagang">Pedagang</option>
				<option value="petani">Petani</option>
				<option value="pensiunan">Pensiunan</option>
				<option value="tni/polri">TNI/Polri</option>
				<option value="tenaga_profesional">Tenaga Profesional</option>
				<option value="tukang">Tukang</option>
				<option value="wiraswasta">Wiraswasta</option>
			</select>
			<label for="parents_father_job" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_father_job'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="parents_father_phone" class="form-control validate-tel" id="parents_father_phone" placeholder="<?php echo $_smarty_tpl->getValue('lang')['parents_father_phone'];?>
" >
			<label for="parents_father_phone" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_father_phone'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders hnoas-icon input-style-always-active validate-field mb-4">
			<input type="text" class="form-control validate-name" id="parents_mother_name" name="parents_mother_name" placeholder="<?php echo $_smarty_tpl->getValue('lang')['parents_mother_name'];?>
" value="" autocomplete="off" >
			<label for="parents_mother_name" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_name'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<select id="parents_mother_job" name="parents_mother_job" class="form-control validate-text" >
				<option value="buruh_harian_lepas">Buruh Harian Lepas</option>
				<option value="irt">Ibu Rumah Tangga</option>
				<option value="karyawan_bumn">Karyawan BUMN</option>
				<option value="karyawan_honorer">Karyawan Honorer</option>
				<option value="karyawan_swasta">Karyawan Swasta</option>
				<option value="nelayan">Nelayan</option>
				<option value="pns">PNS</option>
				<option value="pedagang">Pedagang</option>
				<option value="petani">Petani</option>
				<option value="pensiunan">Pensiunan</option>
				<option value="tni/polri">TNI/Polri</option>
				<option value="tenaga_profesional">Tenaga Profesional</option>
				<option value="tukang">Tukang</option>
				<option value="wiraswasta">Wiraswasta</option>
			</select>
			<label for="parents_mother_job" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_job'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
		<div class="input-style has-borders no-icon input-style-always-active validate-field mb-4">
			<input type="number" name="parents_mother_phone" class="form-control validate-tel" id="parents_mother_phone" placeholder="<?php echo $_smarty_tpl->getValue('lang')['parents_mother_phone'];?>
" >
			<label for="parents_mother_phone" class="color-highlight font-400 font-13"><?php echo $_smarty_tpl->getValue('lang')['parents_mother_phone'];?>
</label>
			<i class="fa fa-times disabled invalid color-red-dark"></i>
			<i class="fa fa-check disabled valid color-green-dark"></i>
			<em>(<?php echo $_smarty_tpl->getValue('lang')['required'];?>
)</em>
		</div>
	</div>
</div>
<div class="card card-style">
	<div class="content mb-0">
		<div class="d-block">
			<div class="form-group row mb-2">
				<label for="declaration" class="col-sm-4 control-label"><?php echo $_smarty_tpl->getValue('lang')['declaration'];?>
 <span class="text-danger">*</span></label>
				<div class="col-sm-8">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" name="declaration" id="declaration" required>
						<label class="form-check-label" for="declaration"><?php echo $_smarty_tpl->getValue('lang')['declaration_desc'];?>
</label>
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
			<div class="col-5"><p class="font-15 font-700 color-theme"><?php echo $_smarty_tpl->getValue('lang')['fullname'];?>
</p></div>
			<div class="col-7"><p class="font-13 color-theme" id="ppdb_fullname">Lorem Ipsum</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-5"><p class="font-15 font-700 color-theme"><?php echo $_smarty_tpl->getValue('lang')['registration_number'];?>
</p></div>
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
<?php } else { ?>
<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=ppdb");?>
' data-card-height="80" class="card card-style mb-3">
	<div class="card-center">
		<h5 class="ps-3">PPDB di TUTUP</h5>
		<p class="ps-3 mt-n2 font-12 color-highlight mb-0">Pendaftaran siswa baru TA <?php echo $_smarty_tpl->getValue('ppdb_settings')['tahun_ajaran'];?>
 sudah ditutup.</p>
	</div>
	<div class="card-center opacity-30">
		<i class="fa fa-list opacity-80 float-end color-theme pe-3 font-20"></i>
	</div>
</a>
<?php }
$_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>

<?php echo '<script'; ?>
>
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
<?php echo '</script'; ?>
>
<?php }
}
