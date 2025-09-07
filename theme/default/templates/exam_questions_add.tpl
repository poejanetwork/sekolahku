{include file="header1.tpl"}
{if $exam_questions}
<div class="card card-style">
	<div class="content">
		<h3 class="font-16">{$lang.question_bank_add}</h3>
		<p>
			Soal berdasarkan Mata Pelajaran <strong>{$user.major_name}</strong>
		</p>
		<a href='{"?p=exam_questions"|surl}' data-menu="menu-add-card" class="btn btn-full btn-m bg-highlight rounded-sm shadow-xl font-800 text-uppercase"><i class="fa fa-arrow-left me-1"></i> Kembali ke Kumpulan Soal</a>
	</div>
</div>

<form action='{"?p=exam_questions"|surl}' class="form_settings" method="post">
    {$token}
<div class="content">
<div class="bg-white card-style mb-3 mx-0 border-2 border-start border-primary">
	<div class="content mb-0">
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<select name="question_type" class="form-control" id="question_type" onchange="changeQuestionType(this.value)">
				<option value="choice">Pilihan Ganda</option>
				<option value="multiple_choice">Pilihan Jawaban Ganda</option>
				<option value="true_false">Benar/Salah</option>
				<option value="essay">Essay</option>
			</select>
			<label for="question_type" class="text-uppercase font-700 font-10">Jenis Soal</label>
		</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-sticky-note color-highlight"></i>
			<input name="question_text" type="text" class="form-control" id="question_text" placeholder="Masukkan pertanyaan" value="">
			<label for="question_text" class="text-uppercase font-700 font-10">Pertanyaan</label>
		</div>
	<div id="options-container">
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<input name="option_a" type="text" class="form-control" id="option_a" placeholder="Masukkan jawaban opsi A" value="">
			<label for="option_a" class="text-uppercase font-700 font-10">Jawaban A</label>
		</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<input name="option_b" type="text" class="form-control" id="option_b" placeholder="Masukkan jawaban opsi B" value="">
			<label for="option_b" class="text-uppercase font-700 font-10">Jawaban B</label>
		</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<input name="option_c" type="text" class="form-control" id="option_c" placeholder="Masukkan jawaban opsi C" value="">
			<label for="option_c" class="text-uppercase font-700 font-10">Jawaban C</label>
		</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<input name="option_d" type="text" class="form-control" id="option_d" placeholder="Masukkan jawaban opsi D" value="">
			<label for="option_d" class="text-uppercase font-700 font-10">Jawaban D</label>
		</div>
	</div>
	<div id="correct-answer-area">
		<div id="choice-options" class="input-style-always-active no-borders has-icon validate-field mb-4">
			<label for="correct_answer" class="text-uppercase font-700 font-10 d-block">Jawaban Benar</label>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="choice_correct_answer" 
					type="radio" 
					id="choiceA" 
					class="chip-input exam-type-checkbox"
					value="a"
				>
				<label for="choiceA" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban A</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="choice_correct_answer" 
					type="radio" 
					id="choiceB" 
					class="chip-input exam-type-checkbox"
					value="b"
				>
				<label for="choiceB" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban B</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="choice_correct_answer" 
					type="radio" 
					id="choiceC" 
					class="chip-input exam-type-checkbox"
					value="c"
				>
				<label for="choiceC" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban C</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="choice_correct_answer" 
					type="radio" 
					id="choiceD" 
					class="chip-input exam-type-checkbox"
					value="d"
				>
				<label for="choiceD" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban D</span>
				</label>
			</div>
		</div>
		<div id="multiple-options" class="input-style-always-active no-borders has-icon validate-field mb-4" style="display:none;">
			<label for="correct_answer" class="text-uppercase font-700 font-10 d-block">Jawaban Benar</label>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="multiple_correct_answer[]" 
					type="checkbox" 
					id="multipleChoiceA" 
					class="chip-input exam-type-checkbox"
					value="a"
				>
				<label for="multipleChoiceA" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban A</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="multiple_correct_answer[]" 
					type="checkbox" 
					id="multipleChoiceB" 
					class="chip-input exam-type-checkbox"
					value="b"
				>
				<label for="multipleChoiceB" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban B</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="multiple_correct_answer[]" 
					type="checkbox" 
					id="multipleChoiceC" 
					class="chip-input exam-type-checkbox"
					value="c"
				>
				<label for="multipleChoiceC" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban C</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="multiple_correct_answer[]" 
					type="checkbox" 
					id="multipleChoiceD" 
					class="chip-input exam-type-checkbox"
					value="d"
				>
				<label for="multipleChoiceD" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Jawaban D</span>
				</label>
			</div>
		</div>
		<!-- True/False -->
		<div id="true-false-options" class="input-style-always-active no-borders has-icon validate-field mb-4" style="display:none;">
			<label for="truefalse_correct_answer" class="text-uppercase font-700 font-10 d-block">Jawaban Benar</label>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="truefalse_correct_answer" 
					type="radio" 
					id="truefalseA" 
					class="chip-input exam-type-checkbox"
					value="benar"
				>
				<label for="truefalseA" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Benar</span>
				</label>
			</div>
			<div class="d-inline-block chip-checkbox">
				<input 
					name="truefalse_correct_answer" 
					type="radio" 
					id="truefalseB" 
					class="chip-input exam-type-checkbox"
					value="salah"
				>
				<label for="truefalseB" class="chip chip-small bg-dark-dark my-1">
					<i class="fa fa-check chip-icon chip-icon-check"></i>
					<i class="fa fa-times chip-icon chip-icon-times"></i>
					<span class="chip-label">Salah</span>
				</label>
			</div>
		</div>

		<!-- Essay -->
		<div id="essay-options" class="input-style input-style-always-active no-borders has-icon validate-field mb-4" style="display:none;">
			<textarea name="correct_answer" class="form-control" placeholder="Contoh jawaban essay (opsional)"></textarea>
			<label for="correct_answer" class="text-uppercase font-700 font-10">Jawaban Benar</label>
		</div>
	</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<input name="points" type="number" step="1" min="1" class="form-control" id="points" placeholder="Masukkan skor/poin jika benar" value="1">
			<label for="points" class="text-uppercase font-700 font-10">Skor/Poin</label>
		</div>
		<div class="input-style input-style-always-active no-borders has-icon validate-field mb-4">
			<i class="fa fa-dot-circle color-highlight"></i>
			<select name="level" class="form-control" id="level">
				{foreach from=$allLevels item=level}
				<option value="{$level}">{$level}</option>
				{/foreach}
			</select>
			<label for="level" class="text-uppercase font-700 font-10">Soal Level/Tingkat</label>
		</div>
	</div>
      
</div>
</div>

<div class="card card-style">
	<div class="content mb-0">
		<h4>Upload Gambar</h4>
		<p>
			Silahkan upload gambar soal (jika dibutuhkan). Kosongkan jika tidak.
		</p>
		<div class="file-data pb-5">
			<input type="file" id="file-upload" class="upload-file bg-highlight shadow-s rounded-s " accept="image/*">
			<p class="upload-file-text color-white">Upload Image</p>
		</div>
		<div class="list-group list-custom-large upload-file-data disabled">
			<img id="image-data" src="images/empty.png" class="img-fluid" style="width:100%; display:block; height:300px">
			<a href="#" class="border-0">
				<i class="fa font-14 fa-info-circle color-blue-dark"></i>
				<span>File Name</span>
				<strong class="upload-file-name">JS Populated</strong>
			</a>
			<a href="#" class="border-0">
				<i class="fa font-14 fa-weight-hanging color-brown-dark"></i>
				<span>File Size</span>
				<strong class="upload-file-size">JS Populated</strong>
			</a>
			<a href="#" class="border-0">
				<i class="fa font-14 fa-tag color-red-dark"></i>
				<span>File Type</span>
				<strong class="upload-file-type">JS Populated</strong>
			</a>
			<a href="#" class="border-0 pb-4">
				<i class="fa font-14 fa-clock color-blue-dark"></i>
				<span>Modified Date</span>
				<strong class="upload-file-modified">JS Populated</strong>
			</a>
		</div>
	</div>
</div>
	<div class="content mb-3">
		<input type="hidden" value="{$exam_questions.major_id}" name="major_id">
		<input type="hidden" value="do_add" name="act">
		<button type="submit" data-action="skip" class="btn btn-primary btn-full w-100 rounded-s font-900 shadow-s">Simpan Soal</button>  
	</div>
</form>
{/if}

{include file="footer.tpl"}
{literal}
<script>
document.addEventListener("DOMContentLoaded", function() {
	const questionType = document.getElementById("question_type");
	const optionsContainer = document.getElementById("options-container");

	const choiceOptions = document.getElementById("choice-options");
	const multipleOptions = document.getElementById("multiple-options");
	const trueFalseOptions = document.getElementById("true-false-options");
	const essayOptions = document.getElementById("essay-options");

	function updateVisibility() {
		const type = questionType.value;

		// Default sembunyikan semua bagian jawaban
		choiceOptions.style.display = "none";
		multipleOptions.style.display = "none";
		trueFalseOptions.style.display = "none";
		essayOptions.style.display = "none";
		optionsContainer.style.display = "none";

		// Tampilkan sesuai tipe soal
		if (type === "choice") {
			optionsContainer.style.display = "block";
			choiceOptions.style.display = "block";
		} else if (type === "multiple_choice") {
			optionsContainer.style.display = "block";
			multipleOptions.style.display = "block";
		} else if (type === "true_false") {
			trueFalseOptions.style.display = "block";
		} else if (type === "essay") {
			essayOptions.style.display = "block";
		}
	}

	// Jalankan saat pertama kali halaman load
	updateVisibility();

	// Jalankan setiap kali user mengubah tipe soal
	questionType.addEventListener("change", updateVisibility);
});
</script>

{/literal}