{include file="header_exam.tpl"}
{if $examroom}
<div class="card card-style">
	<div class="content mb-4">
		<h3 class="mb-3"><i class="fa fa-exclamation-triangle me-3 mt-1 font-17 color-yellow-dark"></i> {$examroom.room_name}</h3>
		<input type="hidden" id="room_code" value="{$examroom.room_code}" readonly>
		<input type="hidden" id="level" value="{$examroom.level}" readonly>
		<input type="hidden" id="major_id" value="{$examroom.major_id}" readonly>
		<input type="hidden" id="userStatus" value="{$examroom.status}" readonly>
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
		</div>

	</div>
</div>

<div class="bg-white me-3 ms-3 mb-3 rounded-s border border-2 border-warning p-2" role="alert">
	<h4 class="text-uppercase text-center color-yellow-dark"><i class="fa fa-exclamation-triangle font-18"></i> Warning</h4>
	<h4 class="text-uppercase">Keluar <span id="user_violation">0</span>/3</h4>
	<strong class="alert-icon-text">Keluar ujian lebih dari 3x maka ujian akan diberhentikan oleh pengawas.</strong>
</div>

<div id="process" class="card card-style text-center">
	<div id="loader" class="row content mb-3">
	<h5 id="loaderMessage" class="py-2"><i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Menunggu pengawas ruangan memulai ujian...</h5>
	<div id="timeLeft" class="d-none font-20 font-500"></div>
	</div>
	<div id="btnUjian" class="col-12 text-center">
		<button type="button" id="btnStartUjian" class="d-none btn btn-primary font-12 px-2 py-2 mx-1 mb-2">Mulai Ujian</button>
		<button type="button" id="btnStopUjian" class="d-none btn btn-danger font-12 px-2 py-2 mx-1 mb-2">Selesai Ujian</button>
	</div>
</div>

<div id="examQuestionsContainer" class="card card-style d-none">
	<div class="row content mb-4 text-center">
    <!-- Soal akan dimasukkan di sini -->
	</div>
</div>
{/if}
{include file="footer_exam.tpl"}
<div id="pageOverlay" class="d-none" style="position:fixed; top:0; left:0; width:100vw; height:100vh; background-color:rgba(0,0,0,0.6); z-index:9999;"></div>
{literal}
<script>
document.addEventListener('DOMContentLoaded', function () {
    var examRoomId = '{/literal}{$examroom.id}{literal}';
    var examRoomTotalQuestions = '{/literal}{$examroom.total_questions}{literal}';
    const btnStartUjian = document.getElementById('btnStartUjian');
    const btnStopUjian = document.getElementById('btnStopUjian');
    const loaderMessageElem = document.getElementById('loaderMessage');
    const pageOverlay = document.getElementById('pageOverlay');
    const userStatus = document.getElementById('userStatus');
    var timeLeftElem = document.getElementById('timeLeft');
    timeLeftElem.classList.add('d-none'); 
	var level = document.getElementById('level');
	var majorId = document.getElementById('major_id');
	var checkstartTime = localStorage.getItem('examStartTime');
	var checkduration = parseInt(localStorage.getItem('examDuration')); // dalam detik
	var storedQuestionOrder = localStorage.getItem('questionOrder');
    var examStatusElem = document.getElementById('examStatus');
	var roomCode = document["getElementById"]('room_code');
    var mainUrl = '{/literal}{$settings.siteurl}{literal}';
    var heartBeatUrl = '{/literal}{"?p=exam&heartbeat={$user.id}"|surl}{literal}';
    var studentViolationUrl = '{/literal}{"?p=exam&violation={$user.id}"|surl}{literal}';
    var studentViolationUjian = document.getElementById('user_violation');
    var checkStatusExamRoomUrl = '{/literal}{"?p=exam&checkexamroom={$examroom.id}"|surl}{literal}';
    var checkStudentExamRoomUrl = '{/literal}{"?p=exam&getexamroom={$examroom.id}"|surl}{literal}';let answersKeyed = {};let ujianDimulai = false;let questionsLoaded = false;let countdownInterval = null;let heartbeatIntervalId = null;const heartbeatInterval = 30000;
	
    var examQuestionsContainer = document.getElementById('examQuestionsContainer');
	var questionsContent = examQuestionsContainer.querySelector('.content');

	function updateStatusTextAndClass(newStatus, studentStatus) {
		if (!examStatusElem) return;
		
		examStatusElem.classList.remove('color-green-light', 'color-yellow-dark', 'color-red-dark');
		examStatusElem.textContent = newStatus.toUpperCase();
		var studentStatusRes = studentStatus.data.status;
		studentViolationUjian.textContent = studentStatus.data.exam_violation;

		if (newStatus.toLowerCase() === 'not_yet') {
        	// Semua tombol tetap tersembunyi
			ujianDimulai = false;
		} else if (newStatus.toLowerCase() === 'pending') {
			examStatusElem.classList.add('color-yellow-dark');
			btnStartUjian.classList.add('d-none');
			btnStopUjian.classList.remove('d-none');
			examQuestionsContainer.classList.add('d-none');
			pageOverlay.classList.remove('d-none');
			loaderMessageElem.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Ujian di pause oleh pengawas...';
			ujianDimulai = false;
		} else if (newStatus.toLowerCase() === 'started') {
        examStatusElem.classList.add('color-green-light');
			if (studentStatusRes === 'ready') {
				btnStartUjian.classList.remove('d-none');
				btnStopUjian.classList.add('d-none');
				ujianDimulai = false;
			} else if (studentStatusRes === 'ongoing' || studentStatusRes === 'paused') {
				btnStartUjian.classList.add('d-none');
				btnStopUjian.classList.remove('d-none');
				ujianDimulai = true;
				if (studentStatusRes === 'paused') {
					pageOverlay.classList.remove('d-none');
					loaderMessageElem.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Ujian di pause oleh pengawas...';
				} else {
					pageOverlay.classList.add('d-none');
					loaderMessageElem.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Ujian sedang berlangsung...';
				}
			} else if (studentStatusRes === 'finished') {
				btnStartUjian.classList.add('d-none');
				btnStopUjian.classList.add('d-none');
				ujianDimulai = true;
				loaderMessageElem.innerHTML = '<i class="fa fa-check-circle color-green-dark"></i> Anda mengakhiri sesi ujian...';
				localStorage.removeItem('questionOrder');
			}
		} else if (newStatus.toLowerCase() === 'finished') {
			localStorage.removeItem('questionOrder');
			examStatusElem.classList.add('color-red-dark');
			btnStartUjian.classList.add('d-none');
			btnStopUjian.classList.add('d-none');
			examQuestionsContainer.classList.add('d-none');
			loaderMessageElem.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Pengawas menutup sesi ujian...';
			ujianDimulai = true;
			setTimeout(() => window.location.href = mainUrl, 5000);
		}
	}
	// updateStatusTextAndClass(examStatusElem.textContent);

    btnStartUjian.addEventListener('click', async function() {
		try {
			// load soal
			ujianDimulai = true;  // tandai ujian sudah mulai oleh user
			var sse = await startStopExam(1);
			if (sse === 1) {
				// Sembunyikan tombol mulai, tampilkan tombol berhenti
				btnStartUjian.classList.add('d-none');
				btnStopUjian.classList.remove('d-none');
				
				await fetchAndShowExamQuestions();

				loaderMessageElem.innerHTML = '<i class="fa fa-spinner fa-spin fa-pulse color-dark-dark"></i> Ujian sedang berlangsung...';
			}
		} catch (error) {
			console.log('Start exam failed, batalkan fetch soal.');
			// Error sudah ditangani di startStopExam, tidak lanjut fetch
		}
    });
    btnStopUjian.addEventListener('click', async function() {
		try {
			if (!await dialog.confirm(`Apakah Anda yakin akan mengakhiri sesi ujian?`)) return;

			loaderMessageElem.innerHTML = '<i class="fa fa-check-circle color-green-dark"></i> Ujian telah selesai, semoga mendapatkan hasil yang memuaskan!';
			// load soal
			ujianDimulai = true;
			await startStopExam(2);
			// Sembunyikan tombol stop
			btnStartUjian.classList.add('d-none');
			btnStopUjian.classList.add('d-none');
			examQuestionsContainer.classList.add('d-none');
			timeLeftElem.classList.add('d-none');
			localStorage.removeItem('questionOrder');
		} catch (error) {
			console.log('Start exam failed, batalkan fetch soal.');
			// Error sudah ditangani di startStopExam, tidak lanjut fetch
		}
    });
	
	async function startStopExam(type) {
		try {
			const baseExamRoomUrl = '{/literal}{"?p=exam&start_stop_exam="|surl}{literal}';
			const startExamRoomUrl = baseExamRoomUrl + encodeURIComponent(type);

			const res = await fetch(startExamRoomUrl, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({ room_code: roomCode["value"] })
			});

			const data = await res.json();

			if (data.status === 'success') {
				if (type == 1) {
					// simpan kalau belum ada
					if (!checkstartTime || !checkduration) {
						if (data.data && data.data.start_time && data.data.duration != null) {
							localStorage.setItem('examStartTime', data.data.start_time);
							localStorage.setItem('examDuration', String(data.data.duration * 60)); // detik
						}
					}
					// mulai hitung mundur
					startCountdown(data.data.start_time, data.data.duration * 60);
					timeLeftElem.classList.remove('d-none');
				}
				return 1; // <- nilai baliknya berupa Promise<number>
			} else {
				showAlert("Error", 'Gagal memulai ujian: ' + (data.message ?? 'Tidak diketahui'));
				return 0;
			}
		} catch (err) {
			console.error('Error:', err);
			showAlert("Error", 'Terjadi kesalahan saat memulai ujian: ' + (err?.message ?? err));
			return 0;
		}
	}

	// Fungsi hitung mundur menampilkan waktu tersisa
	function startCountdown(startTimeStr, durationSeconds) {
		const startTime = new Date(startTimeStr.replace(' ', 'T'));
		const endTime = new Date(startTime.getTime() + durationSeconds * 1000);

		if (countdownInterval) clearInterval(countdownInterval);

		countdownInterval = setInterval(() => {
			const now = new Date();
			const remainingTime = Math.floor((endTime - now) / 1000);

			if (remainingTime <= 0) {
				clearInterval(countdownInterval);
				document.getElementById("timeLeft").innerHTML = "Waktu Habis!";
				return;
			}

			const minutes = Math.floor(remainingTime / 60);
			const seconds = remainingTime % 60;
			document.getElementById("timeLeft").innerHTML = `${minutes} menit ${seconds.toString().padStart(2, '0')} detik`;
		}, 1000);
	}

    async function fetchAndShowExamQuestions() {
		const questionsApiUrl = '{/literal}{"?p=exam&getquestions&room_id={$examroom.id}"|surl}{literal}';

		try {
			const res = await fetch(questionsApiUrl, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({
					level: level["value"],
					major_id: majorId["value"],
					room_id: examRoomId
				})
			});
			const data = await res.json();

			console.log("data.status");
			console.log(data.status);
			if (data.status === 'success' && Array.isArray(data.data)) {
				questionsContent.innerHTML = '';
				localStorage.setItem('questionOrder', JSON.stringify(data.data));

				// Fetch jawaban siswa
				const answersApiUrl = '{/literal}{"?p=exam&getanswers&room_id={$examroom.id}"|surl}{literal}';
				const answersRes = await fetch(answersApiUrl, {
					method: 'POST',
					headers: { 'Content-Type': 'application/json' },
					body: JSON.stringify({
						room_id: examRoomId
					})
				});
				const answersData = await answersRes.json();

				if (answersData.status === 'success' && Array.isArray(answersData.data)) {
					answersData.data.forEach(item => {
						answersKeyed[item.question_id] = item.answer;
					});
				}
				// List soal sudah dijawab
				const answeredQuestionsIds = (answersData.status === 'success' && Array.isArray(answersData.data)) ? answersData.data.map(item => item.question_id) : [];

				data.data.forEach((questionId, index) => {
					const questionElem1 = document.createElement('div');
					questionElem1.id = `soal${questionId}`;
					questionElem1.className = 'col-3 col-lg-2';

					const questionElem2 = document.createElement('div');
					questionElem2.className = 'btn exam-question rounded shadow-sm mb-3';
					questionElem2.innerHTML = `<strong>Soal<br/>${index + 1}</strong>`;

					// Jika soal sudah dijawab, tambahkan kelas btn-success
					if (answeredQuestionsIds.includes(questionId)) {
						questionElem2.classList.add('btn-success');
						questionElem2.classList.remove('btn-primary');
					} else {
						questionElem2.classList.add('btn-primary');
					}

					questionElem2.addEventListener('click', () => {
						openQuestionModal(questionId, answersKeyed);
					});

					questionsContent.appendChild(questionElem1);
					questionElem1.appendChild(questionElem2);
				});

				examQuestionsContainer.classList.remove('d-none');
			} else {
				examQuestionsContainer.classList.remove('d-none');
				questionsContent.innerHTML = '<p>Tidak ada soal yang tersedia.</p>';
			}
		} catch (err) {
			console.error('Error fetching questions or answers:', err);
			examQuestionsContainer.classList.remove('d-none');
			questionsContent.innerHTML = '<p>Gagal memuat soal ujian.</p>';
		}
	}

    // Fungsi untuk fetch data dan update
    async function checkStudentExamRoom() {
    try {
        const res = await fetch(checkStudentExamRoomUrl);
        if (!res.ok) throw new Error("Network response was not ok");
        const data = await res.json();
			if(data.status === 'success') {
				userStatus["value"] = data.data.status;
				return data;
			} else {
				console.warn('Tidak ada data siswa');
			}
		} catch (err) {
			console.error('Fetch error:', err);
			return null;
		}
    }

	function openQuestionModal(questionId, answersKeyed) {
		const baseQuestionsUrl = '{/literal}{"?p=exam&getquestions&qid="|surl}{literal}';
        const questionsIdUrl = baseQuestionsUrl + encodeURIComponent(questionId);
		// Panggil API untuk dapatkan detail soal berdasarkan questionId
		fetch(questionsIdUrl)
		.then(res => res.json())
		.then(data => {
			if (data.status === 'success' && data.data) {
				renderQuestionModal(data.data, answersKeyed);
				// Tampilkan modal Bootstrap
				var questionModal = new bootstrap.Modal(document.getElementById('questionModal'));
				questionModal.show();
			} else {
				showAlert("Error",'Gagal mengambil data soal');
			}
		})
		.catch(err => {
			console.error('Error loading question detail:', err);
			showAlert("Error",'Terjadi kesalahan saat memuat data soal: ' + err);
		});
	}

	function renderQuestionModal(question, answersKeyed) {
		const modalBody = document.getElementById('questionModalBody');
		modalBody.innerHTML = ''; // Kosongkan dulu
		let questionOrder = [];
		if (storedQuestionOrder) {
			questionOrder = JSON.parse(storedQuestionOrder);
		}

		// Cari nomor urut soal berdasarkan id soal
		const questionNumber = questionOrder.indexOf(question.id) >= 0 ? questionOrder.indexOf(question.id) + 1 : 0;

		const studentAnswer = answersKeyed[question.id] || null;

		// Tampilkan teks soal
		let html = `<p><strong>Soal nomor ${questionNumber}:</strong><br/>${question.question_text}</p>`;

		// Tampilkan gambar (jika ada)
		if (question.question_image) {
			html += `<img src="${question.question_image}" alt="Gambar Soal" class="img-fluid mb-3">`;
		}

		// Tampilkan pilihan jawaban (asumsikan tipe choice)
		const options = ['option_a', 'option_b', 'option_c', 'option_d'];
		html += '<form id="formAnswer">';
		options.forEach((opt, idx) => {
			if (question[opt]) {
      			const checked = studentAnswer === question[opt] ? 'checked' : '';
				html += `
				<div class="form-check icon-check">
					<input class="form-check-input" type="radio" name="answer" id="answer${idx}" value="${question[opt]}" ${checked}>
					<label class="form-check-label" for="answer${idx}">${question[opt]}</label>
					<i class="icon-check-1 far fa-square color-gray-dark font-16"></i>
                    <i class="icon-check-2 far fa-check-square font-16 color-highlight"></i>
				</div>`;
			}
		});
		html += '</form>';

		modalBody.innerHTML = html;

		// Simpan question id ke tombol save agar bisa kirim
		const btnSave = document.getElementById('btnSaveAnswer');
		btnSave.dataset.questionId = question.id;
	}

	// simpan jawaban
	document.getElementById('btnSaveAnswer').addEventListener('click', () => {
	const baseAnswersUrl = '{/literal}{"?p=exam&save_answer&qid="|surl}{literal}';
    const questionId = document.getElementById('btnSaveAnswer').dataset.questionId;
	const AnswersIdUrl = baseAnswersUrl + encodeURIComponent(questionId);
    const form = document.getElementById('formAnswer');
    const formData = new FormData(form);
    const answer = formData.get('answer');

    if (!answer) {
		showAlert("Error",'Silakan pilih jawaban terlebih dahulu');
        return;
    }

    // Kirim jawaban ke server (kamu perlu participant_id dari sesi/user)
    fetch(AnswersIdUrl, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({
            room_code: roomCode["value"],
            question_id: questionId,
            answer: answer,
        })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
			// showAlert("Sukses",'Jawaban berhasil disimpan');
			const soalDiv = document.getElementById('soal' + questionId);
			if (soalDiv) {
				const btn = soalDiv.querySelector('div.btn');
				if (btn) {
					btn.classList.remove('btn-primary');
					btn.classList.add('btn-success');
				}
			}

            // Simpan jawaban lokal
            // Update atau tambah jawaban ke object answersKeyed
            answersKeyed[questionId] = answer;

            // Tutup modal setelah simpan
            var questionModal = bootstrap.Modal.getInstance(document.getElementById('questionModal'));
            questionModal.hide();
        } else {
			showAlert("Error",'Gagal menyimpan jawaban: ' + data.message);
        }
    })
    .catch(err => {
        console.error('Error saving answer:', err);
		showAlert("Error",'Terjadi kesalahan saat menyimpan jawaban: ' + err);
    });
});

    async function updateExamStatus() {
		// Cek status user
		const studentResult = await checkStudentExamRoom();
        // Kirim update ke server via AJAX (fetch)
        fetch(checkStatusExamRoomUrl, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                room_code: roomCode["value"]
            })
        })
        .then(res => res.json())
        .then(data => {
            if (data.status === 'success') {
                // Update status di halaman
                examStatusElem.textContent = data.data;
				updateStatusTextAndClass(data.data, studentResult);
            }
        })
        .catch(err => {
            console.error('Error:', err);
			showAlert("Error",'Terjadi kesalahan saat mengupdate status ujian: ' + err);
        });
    }
    // Polling setiap 5 detik (5000 ms)
    setInterval(updateExamStatus, 5000);

	function sendHeartbeat() {
		fetch(heartBeatUrl, {
			method: 'POST',
			credentials: 'include',
			headers: {'Content-Type': 'application/json'},
			body: JSON.stringify({
				room_code: roomCode.value
			})
		})
		.then(response => response.json())
		.then(data => {
			console.log('Heartbeat response:', data);
		})
		.catch(error => {
			console.log('Heartbeat error:', error);
		});
	}

	function startHeartbeat() {
		if (!heartbeatIntervalId) {
			sendHeartbeat();
			heartbeatIntervalId = setInterval(sendHeartbeat, heartbeatInterval);
			console.log('Heartbeat started');
		}
	}

	function stopHeartbeat() {
		if (heartbeatIntervalId) {
			clearInterval(heartbeatIntervalId);
			heartbeatIntervalId = null;
			console.log('Heartbeat stopped');
		}
	}
	function handleVisibilityChange() {
		if (document.visibilityState === 'visible') {
			console.log("User is focused on the page.");
			startHeartbeat();
			// Bisa tambah aksi lain saat user kembali
		} else {
			// Bisa tambah aksi lain saat user keluar halaman
			console.log("User has left the page or switched away.");
			stopHeartbeat();
			if(userStatus["value"]=="ongoing"){
				// percobaan keluar dari halaman ujian
				fetch(studentViolationUrl, {
					method: 'POST',
					credentials: 'include',
					headers: {'Content-Type': 'application/json'},
					body: JSON.stringify({
						room_code: roomCode.value
					})
				})
				.then(response => response.json())
				.then(data => {
					if(data.status=="success"){
						studentViolationUjian.textContent = data.data;
						showAlert("Notifikasi", "Anda melakukan pelanggaran! Ujian akan di stop jika anda mengulangi 3x.");
					}
				})
				.catch(error => {
					console.log('Violation error:', error);
				});
			}
		}
	}
	// Pasang event listener visibilitychange
	document.addEventListener('visibilitychange', handleVisibilityChange);

	// Mulai heartbeat jika halaman sudah dalam keadaan visible saat load
	if (document.visibilityState === 'visible') {
		startHeartbeat();
	}

	document.addEventListener('contextmenu', e => e.preventDefault());
	document.addEventListener('copy', e => e.preventDefault());
	document.addEventListener('paste', e => e.preventDefault());
	document.addEventListener('keydown', function(e) {
		if (e.ctrlKey && (e.key === 'c' || e.key === 'v' || e.key === 'u')) {
			e.preventDefault();
		}
	});
	
	if (checkstartTime && checkduration && storedQuestionOrder) {
		fetchAndShowExamQuestions();
	}
});
</script>
{/literal}
<div class="modal fade" id="questionModal" tabindex="-1" aria-labelledby="questionModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="questionModalLabel">Detail Soal</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="questionModalBody">
        <!-- Detail soal akan dimasukkan di sini -->
      </div>
      <div class="modal-footer justify-content-center">
        <button type="button" data-action="skip" id="btnSaveAnswer" class="btn btn-primary">Simpan Jawaban</button>
        <button type="button" data-action="skip" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
      </div>
    </div>
  </div>
</div>