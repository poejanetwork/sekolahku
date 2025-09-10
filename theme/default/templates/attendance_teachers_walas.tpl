{include file="header1.tpl"}
{if $class_detail}
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Presensi/Absensi</h1>
		<p class="opacity-50 color-white mb-0">Kelas {$class_detail.class_name} {$settings.sitename}</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>

<div class="card card-style">
    <div class="content text-center">
      <small>Hari ini</small>
    <h4 class="mb-0">{$todayDate}</h4>
    </div>
</div>

    <div class="mb-2">
    <div class="card card-style">
    <div class="card header-card shape-rounded" data-card-height="70">
        <div class="card-center text-center">
            <div class="d-flex">
                <div class="ps-3 ms-2 align-self-center">
                    <h1 class="color-white center-text mb-0 pt-2">
                        {$smarty.foreach.p.iteration}
                    </h1>
                </div>
                <div class="text-start align-self-center mt-1 ps-4">
                    <h4 class="color-white font-600">{$class_detail.class_name}</h4>
                    <p class="mt-n2 font-11 color-white mb-0">
                        Walas: {$class_detail.teacher_name}
                    </p>
                </div>
                <div class="ms-auto align-self-center me-3">
                    <span class="badge bg-blue-dark color-white font-11 font-500 py-1 px-2">{$class_detail.total_students} Siswa</span>
                </div>
            </div>
        </div>
        <div class="card-overlay bg-highlight opacity-95"></div>
        <div class="card-overlay dark-mode-tint"></div>
    </div>
    <a style="height:70px;" href="javascript:void(0)"></a>
    <div class="content mt-0">
      <form method="post">
        <input type="hidden" name="class_id" value="{$class_detail.class_id}">
        {foreach from=$class_detail.all_students item=students name=ps}
        <div class="d-flex border-bottom">
            <div class="ps-3 ms-2 align-self-center">
                <h1 class="center-text mb-0 pt-2">
                    {$smarty.foreach.ps.iteration}
                </h1>
            </div>
            <div class="align-self-center ps-3">
                <h5 class="font-600 font-14 mb-n1"><a class="color-black" href='{"?p=account_view&id={$students.id}"|surl}'>{$students.fullname}</a></h5>
                <input type="hidden" name="student_id[{$class_detail.class_id}][]" value="{$students.id}">
            </div>
            <div class="my-auto ms-auto">
              <select name="attendance_status[{$class_detail.class_id}][]" class="form-control form-control-sm attendance-select" required>
                  <option value="hadir" {if $students.attendance_status == 'hadir'}selected{/if}>Hadir</option>
                  <option value="terlambat" {if $students.attendance_status == 'terlambat'}selected{/if}>Terlambat</option>
                  <option value="sakit" {if $students.attendance_status == 'sakit'}selected{/if}>Sakit</option>
                  <option value="izin" {if $students.attendance_status == 'izin'}selected{/if}>Izin</option>
              </select>
              <input type="text" class="form-control form-control-sm mt-1 notes-input d-none" name="notes[{$class_detail.class_id}][]" placeholder="Keterangan..." value="{$students.notes|default:''}">
            </div>
        </div>
        {/foreach}
        <div class="mt-2 me-3">
          <button type="button" onclick="submitAttendance(event,this.form)" data-action="skip" class="btn btn-primary btn-sm w-100">Simpan Absensi Kelas</button>
        </div>
        </form>
    </div>
  </div>
  </div>
  {else}
  <div class="alert me-3 ms-3 rounded-s bg-red-dark " role="alert">
      <span class="alert-icon"><i class="fa fa-times-circle font-18"></i></span>
      <h4 class="text-uppercase color-white">Error</h4>
      <strong class="alert-icon-text">Anda bukan guru piket hari ini!!!</strong>
  </div>
  {/if}
{include file="footer.tpl"}
{literal}
<script>
document.addEventListener('DOMContentLoaded', function() {
  function toggleNotesInput(selectElem) {
    const notesInput = selectElem.parentElement.querySelector('.notes-input');
    if (!notesInput) return;

    if (selectElem.value === 'izin' || selectElem.value === 'sakit') {
      notesInput.classList.remove("d-none");
      notesInput.required = true;
    } else {
      notesInput.classList.add("d-none");
      notesInput.required = false;
      notesInput.value = '';
    }
  }

  // Inisialisasi untuk semua select saat load halaman
  document.querySelectorAll('.attendance-select').forEach(select => {
    toggleNotesInput(select);

    // Tambah event listener tiap select untuk toggle dinamis
    select.addEventListener('change', function() {
      toggleNotesInput(this);
    });
  });
});

var attendancePiketUrl = '{/literal}{"?p=classes&{$class_detail.class_id}&attendance&save_walas"|surl}{literal}';
function submitAttendance(event, form) {
  event.preventDefault();

  const formData = new FormData(form);
  const classId = formData.get('class_id');

  // Buat object data untuk dikirim JSON
  let data = {
    class_id: classId,
    student: [],
  };

    // Ambil array student_id dan attendance_status
    // Ambil semua student_id dan attendance_status untuk kelas tersebut
    const studentIds = formData.getAll('student_id[' + classId + '][]');
    const attendanceStatuses = formData.getAll('attendance_status[' + classId + '][]');
    const notes = formData.getAll('notes[' + classId + '][]');

  for (let i = 0; i < studentIds.length; i++) {
    data.student.push({
      id: studentIds[i],
      attendance_status: attendanceStatuses[i],
      notes: notes[i]
    });
  }

  fetch(attendancePiketUrl, {
    method: 'POST',
    headers: {
    'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
  })
  .then(res => res.json())
  .then(response => {
      if(response.status === 'success') {
        showAlert("Sukses", response.message);
      } else {
        showAlert("Error", response.message);
      }
  })
  .catch(err => {
      console.error('Error:', err);
      showAlert("Error", "Terjadi kesalahan pada server.");
  });

  return false; // mencegah form submit default
}
</script>
{/literal}