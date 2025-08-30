{include file="header_exam.tpl"}
<div class="card card-style text-center">
	<div class="content">
		<h1><i class="fa fa-lock color-highlight fa-4x"></i></h1>
		<h1 class="font-28">Kode Ujian</h1>
		<div class="text-center mb-3">
			<input name="room_code" id="room_code" class="form-control mx-1 rounded-sm text-center font-20 font-900" type="text" placeholder="Masukkan kode ujian" value="">
		</div>
		<button type="submit" data-action="skip" id="exam-button" class="btn btn-m btn-center-l bg-highlight rounded-sm font-700 text-uppercase">{$lang.login}</button><br/><br/>
		<a href="{$settings.siteurl}" id="back-button" class="btn btn-m btn-center-l bg-dark rounded-sm font-700 text-uppercase">{$lang.back}</a>
	</div>
</div>

{include file="footer_exam.tpl"}
{literal}
<script>
document.addEventListener('DOMContentLoaded', function () {
	var checkExamRoomUrl = '{/literal}{"?p=exam&checkexamroom"|surl}{literal}';
	var roomCode = document["getElementById"]('room_code');
	var roomBtn = document["getElementById"]('exam-button');
	roomBtn["addEventListener"]('click', function() {
		if(roomCode["value"]===""){showAlert("Error","Kode ruangan tidak boleh kosong."); return;}
		const data = {
			room_code: roomCode["value"]
		};
		fetch(checkExamRoomUrl, {
			method: 'POST',
			headers: {
			'Content-Type': 'application/json'
			},
			body: JSON.stringify(data)
		})
		.then(res => res.json())
		.then(response => {
			if(response.status === 'success') {
				if(response.data!="finished"){
					// Jika berhasil
					showAlert("Sukses",'Memproses masuk ke ruang ujian...');
					setTimeout(function() {window.location.href = response.data;}, 2000);
				}else{
					showAlert("Error",'Ruang ujian telah ditutup.');
				}
			} else {
				// Jika gagal
				showAlert("Error",response.message);
			}
		})
		.catch(err => {
			console.error('Error:', err);
			showAlert("Error",err);
		});
	})
});
</script>
{/literal}