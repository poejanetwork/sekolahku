{include file="header_exam.tpl"}
{if $examroom}
<div class="card card-style">
	<div class="content mb-4">
		<h3 class="mb-3"><i class="fa fa-exclamation-triangle me-3 mt-1 font-17 color-yellow-dark"></i> {$examroom.room_name}</h3>
		<input type="hidden" id="room_code" value="{$examroom.room_code}">
		<div class="row mb-0 border-2 border-bottom border-danger">
			<div class="col-6">
				<p class="text-start mb-0 pb-3"><i class="fa fa-code me-2"></i>Kode {$examroom.room_code}</p>
			</div>
			<div class="col-6">
				<p class="text-end mb-0 pb-3"><i class="fa fa-clock me-2"></i>Durasi {$examroom.duration} Menit</p>
			</div>
		</div>
		<div class="divider"></div>
		<div class="row mb-0">
			<div class="col-4"><p class="font-15 font-700 color-theme">Status Ujian</p></div>
			<div class="col-8"><p class="font-13 color-theme"><span id="examStatus">{$examroom.exam_status|strtoupper}</span></p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Jumlah Soal</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.total_questions}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Tanggal Ujian</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.exam_date}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Waktu Ujian</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.start_time} - {$examroom.end_time}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Pengawas</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.teacher_name}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Level/Tingkat</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.level}/{$examroom.level_roman}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-4"><p class="font-15 font-700 color-theme">Mata Pelajaran</p></div>
			<div class="col-8"><p class="font-13 color-theme">{$examroom.major_name|strtoupper}</p></div>
			<div class="divider divider-margins w-100 mt-2 mb-2"></div>
			<div class="col-12 text-center mt-2">
				<button type="button" id="btnStart" class="d-nones btn btn-primary font-12 px-2 py-2 mx-1 mb-2">Mulai Ujian</button>
				<button type="button" id="btnPause" class="d-none btn btn-warning font-12 px-2 py-2 mx-1 mb-2">Pause Ujian</button>
				<button type="button" id="btnStop" class="d-none btn btn-danger font-12 px-2 py-2 mx-1 mb-2">Stop Ujian</button>
				<a href='{"?p=account"|surl}' id="btnOut" class="d-none btn btn-danger font-12 px-2 py-2 mx-1 mb-2">Keluar Ruang Ujian</a>
			</div>
		</div>

	</div>
</div>

<h2 class="font-24 text-center line-height-l mb-3">Daftar Siswa</h2>
<div class="bg-white me-3 ms-3 mb-3 rounded-s border border-2 border-warning p-2" role="alert">
	<h4 class="text-uppercase text-center color-yellow-dark"><i class="fa fa-exclamation-triangle font-18"></i> Warning</h4>
	<strong class="alert-icon-text">Siswa yang keluar ujian secara ilegal maka pengawas berhak untuk "pause" ujian.</strong>
</div>
<div class="card entered loaded">
	<div class="card-body pt-4">

	</div>
	<div class="card-overlay bg-highlight opacity-90"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>
{/if}
{include file="footer_exam.tpl"}
{if $examroom}
{literal}
<script>
document.addEventListener('DOMContentLoaded', function () {
    var examRoomId = '{/literal}{$examroom.id}{literal}';
    var examRoomTotalQuestions = '{/literal}{$examroom.total_questions}{literal}';
    const btnStart = document.getElementById('btnStart');
    const btnPause = document.getElementById('btnPause');
    const btnStop = document.getElementById('btnStop');
    const btnOut = document.getElementById('btnOut');
    var examStatusElem = document.getElementById('examStatus');
	var roomCode = document["getElementById"]('room_code');
    var checkStatusExamRoomUrl = '{/literal}{"?p=exam&checkexamroom={$examroom.id}"|surl}{literal}';
    var checkStudentExamRoomUrl = '{/literal}{"?p=exam&getexamroom={$examroom.id}"|surl}{literal}';
	
	function updateStatusTextAndClass(newStatus) {
		if (!examStatusElem) return;
		examStatusElem.classList.remove('color-green-light', 'color-yellow-dark', 'color-red-dark');
		examStatusElem.textContent = newStatus.toUpperCase();
		if (newStatus.toLowerCase() === 'started') {
			examStatusElem.classList.add('color-green-light');
			btnStart.classList.add('d-none');
			btnPause.classList.remove('d-none');
			btnStop.classList.remove('d-none');
		} else if (newStatus.toLowerCase() === 'pending') {
			examStatusElem.classList.add('color-yellow-dark');
			btnStart.classList.remove('d-none');
			btnPause.classList.add('d-none');
			btnStop.classList.remove('d-none');
		} else if (newStatus.toLowerCase() === 'finished') {
			examStatusElem.classList.add('color-red-dark');
			btnStart.classList.add('d-none');
			btnPause.classList.add('d-none');
			btnStop.classList.add('d-none');
			btnOut.classList.remove('d-none');
		} else if (newStatus.toLowerCase() === 'not_yet') {
			examStatusElem.classList.add('color-red-dark');
			btnStart.classList.remove('d-none');
		}
	}
	updateStatusTextAndClass(examStatusElem.textContent);

    async function updateExamStatus(newStatus) {
		if (!await dialog.confirm(`Apakah Anda yakin akan mengubah status ujian menjadi "${newStatus}"?`)) return;

        // Kirim update ke server via AJAX (fetch)
        fetch(checkStatusExamRoomUrl, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                room_code: roomCode["value"],
                exam_status: newStatus
            })
        })
        .then(res => res.json())
        .then(data => {
            if (data.status === 'success') {
                // Update status di halaman
                examStatusElem.textContent = newStatus;
				updateStatusTextAndClass(newStatus);
                showAlert("Sukses",'Berhasil mengubah status ujian: ' + newStatus);
            } else {
                showAlert("Error",'Gagal mengubah status ujian: ' + data.message);
            }
        })
        .catch(err => {
            console.error('Error:', err);
            showAlert("Error",'Terjadi kesalahan saat mengubah status ujian.');
        });
    }

    btnStart.addEventListener('click', () => updateExamStatus('started'));
    btnPause.addEventListener('click', () => updateExamStatus('pending'));
    btnStop.addEventListener('click', () => updateExamStatus('finished'));

    const container = document.querySelector('.card.entered.loaded .card-body.pt-4');
    let displayedStudentIds = new Set(); // Menyimpan id siswa yg sudah tampil

	function startStopExam(actionCode, participantId, buttonElem) {
    	const baseExamRoomUrl = '{/literal}{"?p=exam&start_stop_exam="|surl}{literal}';
        const startExamRoomUrl = baseExamRoomUrl + encodeURIComponent(actionCode);
		// Kirim permintaan update start_time ke server
		fetch(startExamRoomUrl, {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify({
				room_code: roomCode["value"],
				participant_id: participantId
			})
		})
		.then(res => res.json())
		.then(data => {
			if (data.status === 'success') {
            	showAlert("Sukses",'Status berhasil diupdate');
				// Update badge dan tombol sesuai response atau actionCode
				const card = document.getElementById('student-' + participantId);
				if(card) {
					const badge = card.querySelector('span.badge');
					if (badge) {
						badge.textContent = actionCode === 3 ? 'paused' : 'ongoing';
						badge.className = 'badge ' + (actionCode === 3 ? 'bg-yellow-dark' : 'bg-blue-dark') + ' color-white font-12 font-500 py-2 px-2';
					}

					// Tampilkan sembunyikan tombol pause/resume sesuai status
					const pauseBtns = card.querySelector('button.pauseUser');
					const resumeBtns = card.querySelector('button.resumeUser');
					if (actionCode === 3) {  // pause
						if(pauseBtns) pauseBtns.classList.add('d-none');
						if(resumeBtns) resumeBtns.classList.remove('d-none');
					} else { // resume
						if(pauseBtns) pauseBtns.classList.remove('d-none');
						if(resumeBtns) resumeBtns.classList.add('d-none');
					}
				}
			} else {
				showAlert("Error",'Gagal mengupdate: ' + data.message);
			}
		})
		.catch(err => {
			console.error('Error:', err);
			showAlert("Error",'Terjadi kesalahan saat mengupdate siswa.');
		});
	}

	const pauseTriggered = {};
    // Fungsi buat elemen kartu siswa baru
    function createStudentCard(student, index) {
        // index +1 untuk nomor urut
        const card = document.createElement('div');
        card.href = '#';
        card.className = 'card card-style mb-3 mx-0';
        card.id = 'student-' + student.id; // optional id untuk referensi
        const statusBadge = student.status == "paused" ? "bg-yellow-dark" : student.status == "ongoing" ? "bg-blue-dark" : student.status == "ready" ? "bg-green-dark" : student.status == "finished" ? "bg-green-dark" : "";
		// Jika examViolation > 3 maka tombol pause wajib tampil, resume disembunyikan
		let pauseBtnClass = (student.status == "ongoing") ? "" : "d-none";
		// Resume hanya tampil jika status paused dan violation <= 3
		let resumeBtnClass = (student.status == "paused") ? "" : "d-none";

        const answeredCount = student.answered_count == "0" ? "0" : student.answered_count;
        const examViolation = student.exam_violation == "0" ? "0" : student.exam_violation;

        card.innerHTML = `
            <div class="d-flex pt-3 pb-3">
                <div class="ps-3 ms-2 align-self-center">
                    <h1 class="center-text mb-0 pt-2">${String(index + 1).padStart(2,'0')}</h1>
                </div>
                <div class="align-self-center mt-1 ps-4">
                    <h4 class="color-theme font-600">${student.fullname}</h4>
                    <p class="mt-n2 font-11 color-highlight mb-0">
                        <span class="me-2">Soal <span id="soalTerjawab${student.id}">${answeredCount}</span>/${examRoomTotalQuestions}</span> <span class="">Keluar <span id="examViolation${student.id}">${examViolation}</span>/3</span>
                    </p>
                </div>
                <div class="ms-auto align-self-center me-3">
					<button type="button" id="pause-${student.student_id}" class="pauseUser btn btn-danger color-white font-12 font-500 py-1 px-1 me-1 ${pauseBtnClass}">Pause</button>
					<button type="button" id="resume-${student.student_id}" class="resumeUser btn btn-success color-white font-12 font-500 py-1 px-1 me-1 ${resumeBtnClass}">Resume</button>
                    <span class="badge ${statusBadge} color-white font-12 font-500 py-2 px-2">${student.status}</span>
                </div>
            </div>
        `;

        return card;
    }

	function getStatusBadgeClass(status) {
		switch (status) {
			case "paused": return "bg-red-dark";
			case "ongoing": return "bg-blue-dark";
			case "ready": return "bg-green-dark";
			case "finished": return "bg-green-dark";
			default: return "";
		}
	}
	
	// Fungsi untuk update status siswa dan tombol pause
	function updateStudentStatus(student) {
		const card = document.getElementById('student-' + student.id);
		if (!card) return;

		// Update badge status
		const badge = card.querySelector('span.badge');
		if (badge) {
			badge.textContent = student.status;
			badge.className = 'badge ' + getStatusBadgeClass(student.status) + ' color-white font-12 font-500 py-2 px-2';
		}

		// Update tombol pause
		const pauseBtn = document.getElementById('pause' + student.id);
		if (pauseBtn) {
			if (student.status === 'ongoing') {
				pauseBtn.classList.remove('d-none');
			} else {
				pauseBtn.classList.add('d-none');
			}
		}
	}

	function updateStudentList(data) {
		if (!data || !Array.isArray(data)) return;

		const currentDataIds = new Set(data.map(student => student.id));

		// Hapus user yang keluar dari DOM dan set
		displayedStudentIds.forEach(id => {
			if (!currentDataIds.has(id)) {
				const card = document.getElementById('student-' + id);
				if (card) {
					card.remove();
				}
				displayedStudentIds.delete(id);
			}
		});

		// Tambahkan siswa baru ke set (jangan append kartu dulu)
		data.forEach(student => {
			if (!displayedStudentIds.has(student.id)) {
				displayedStudentIds.add(student.id);
			}
		});

		// Urutkan data berdasarkan fullname (case insensitive)
		data.sort((a, b) => a.fullname.toLowerCase().localeCompare(b.fullname.toLowerCase()));

		// Bersihkan container sebelum render ulang semua kartu
		container.innerHTML = '';

		// Render ulang semua kartu sesuai data terbaru yang sudah terurut
		data.forEach((student, index) => {
			const card = createStudentCard(student, index);
			container.appendChild(card);
		});
		document.querySelectorAll('.pauseUser').forEach(button => {
			button.addEventListener('click', function() {
				const participantId = this.id.replace('pause-', '');
				this.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark me-1"></i> Memproses...';
				startStopExam(3, participantId, this);
			});
		});
		document.querySelectorAll('.resumeUser').forEach(button => {
			button.addEventListener('click', function() {
				const participantId = this.id.replace('resume-', '');
				this.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark me-1"></i> Memproses...';
				startStopExam(4, participantId, this);
			});
		});
	}


    // Fungsi untuk fetch data dan update
    function checkStudentExamRoom() {
        fetch(checkStudentExamRoomUrl)
            .then(res => {
                if (!res.ok) throw new Error("Network response was not ok");
                return res.json();
            })
            .then(data => {
                if(data.status === 'success') {
                    updateStudentList(data.data);
					console.log("Data Siswa reload");
                } else {
                    console.warn('Tidak ada data siswa');
                }
            })
            .catch(err => {
                console.error('Fetch error:', err);
            });
    }

    // Cek pertama kali saat load halaman
    checkStudentExamRoom();

    // Polling setiap 10 detik (10000 ms)
    setInterval(checkStudentExamRoom, 5000);
});
</script>
{/literal}
{/if}