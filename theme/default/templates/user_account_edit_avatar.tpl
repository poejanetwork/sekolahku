{include file="header1.tpl"}
{if $account_edit}
<div class="card card-style">
	<div class="content">
	<h5 class="float-start font-16">{$lang.update} {$lang.avatar}</h5>
	<div class="clearfix"></div>
		<div class="d-flex">
			<div class="text-center">
				<img src='{$account_edit.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block">
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$account_edit.fullname}</h2>
				<p class="font-11 mt-n0 color-blue-dark font-11 mt-1">{$account_edit.email}</p>
			</div>
		</div>
	</div>
</div>

<form class="AccountEditform" method="post" id="AccountEditform" autocomplete="off" data-action='{"?p=account_edit"|surl}'>

<div class="card card-style">
	<div class="content mb-0">
		<h4>Upload Gambar</h4>
		<p>
			Silahkan upload gambar avatar. Kosongkan jika tidak.
		</p>
		<div class="file-data pb-5">
			<input name="avatar" type="file" id="file-upload" class="upload-file bg-highlight shadow-s rounded-s " accept="image/*">
			<p class="upload-file-text color-white">Pilih Gambar</p>
		</div>
		<div class="list-group list-custom-large upload-file-data disabled">
			<img id="image-data" src="images/empty.png" class="img-fluid" style="width:100%; display:block; height:300px">
			<a href="#" class="border-0">
				<i class="fa font-14 fa-info-circle color-blue-dark"></i>
				<span>Nama File</span>
				<strong class="upload-file-name">JS Populated</strong>
			</a>
			<a href="#" class="border-0">
				<i class="fa font-14 fa-weight-hanging color-brown-dark"></i>
				<span>Ukuran File</span>
				<strong class="upload-file-size">JS Populated</strong>
			</a>
			<a href="#" class="border-0">
				<i class="fa font-14 fa-tag color-red-dark"></i>
				<span>Tipe File</span>
				<strong class="upload-file-type">JS Populated</strong>
			</a>
			<a href="#" class="border-0 pb-4">
				<i class="fa font-14 fa-clock color-blue-dark"></i>
				<span>Tanggal Data</span>
				<strong class="upload-file-modified">JS Populated</strong>
			</a>
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