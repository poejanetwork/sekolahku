{include file="header1.tpl"}
<div class="card card-style">
	<div class="content">
		<h3 class="font-16">{$lang.question_bank}</h3>
		<p>
			Kumpulan soal berdasarkan Mata Pelajaran <strong>{$user.major_name}</strong>
		</p>
		<a href='{"?p=exam_questions&add=1"|surl}' data-menu="menu-add-card" class="btn btn-full btn-m bg-highlight rounded-sm shadow-xl font-800 text-uppercase">Tambah Soal Baru</a>
	</div>
</div>

<div class="card card-style">
    <div class="content">
        <h3 class="mb-0 text-center">Rekap Jumlah Soal</h3>
    </div>
    <div class="card-bodys">
        <div class="table-responsive">
<table class="table table-bordered table-dark table-sm text-center rounded-sm shadow-l mb-0">
    <thead>
        <tr>
            <th class="py-3 font-14 align-middle">Level</th>
            {foreach from=$exam_types item=et}
                <th class="py-3 font-14 align-middle">{$et|capitalize}</th>
            {/foreach}
        </tr>
    </thead>
    <tbody>
        {assign var=current_level value=""}
        {foreach from=$questions_summary item=row}
            {if $row.level != $current_level}
                {if $current_level != ""}
                    </tr>
                {/if}
                <tr class="{if $counter % 2 == 1}table-active{else}bg-dark-light{/if}">
                    <td>Kelas {$row.level}</td>
                    {foreach from=$exam_types item=et}
                        {assign var=found value=false}
                        {foreach from=$questions_summary item=subrow}
                            {if $subrow.level == $row.level && $subrow.exam_type == $et}
                                <td>{$subrow.total_questions}</td>
                                {assign var=found value=true}
                            {/if}
                        {/foreach}
                        {if !$found}
                            <td>0</td>
                        {/if}
                    {/foreach}
                {assign var=current_level value=$row.level}
            {/if}
        {/foreach}
        </tr>
    </tbody>
</table>
</div>
    </div>
</div>

<div class="card entered loaded">
	<div class="card-body pt-4">
		<h4 class="color-white mb-0">Total Jumlah {$exam_questions|count} Soal</h4>
		<p class="color-white mb-3 font-12">
			Detail rincian soal per level
		</p>
		<div class="list-group list-boxes">
			{foreach $exam_questions_per_level as $level => $jumlah}
			<a href="#" class="bg-white border border-light rounded-s shadow-xs">
				
				<span>Level {$level}</span>
				<strong>{$jumlah} Soal</strong>
				<u class="color-green-dark">SOAL</u>
				<i class="fa fa-book color-green-dark"></i>
			</a>
			{/foreach}	
		</div>
	</div>
	<div class="card-overlay bg-highlight opacity-90"></div>
	<div class="card-overlay dark-mode-tint"></div>
</div>

<div class="content">
{foreach from=$exam_questions item=item name=p}
<div class="bg-white card-style mb-3 mx-0 border-2 border-start border-primary">
	<div class="d-flex pt-1 pb-1">
		<div class="ps-3 ms-2 align-self-center">
			<h6 class="center-text mb-0">
				{$smarty.foreach.p.iteration}.
			</h6>
		</div>
		<div class="align-self-center mt-1 ps-4">
			<h6 class="color-theme font-600">{$item.question_text}</h6>
		</div>
	</div>
	<div class="text-center">
		<img data-src="{$item.question_image}" class="preload-img owl-lazy img-fluid w-50 zoom-on-click" style="cursor: zoom-in;" loading="lazy">
	</div>
	<div class="content mb-2 mt-1">
		<div class="d-flex">
			<div class="w-100 align-self-center ps-3">
				{if $item.question_type=="true_false"}
				<h6 class="font-14 {if in_array('benar', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}"><span class="ms-1">Benar</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if in_array('salah', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}"><span class="ms-1">Salah</span></h6>
				{elseif $item.question_type=="essay"}
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 font-400"><span class="ms-1">{$item.correct_answer}</span></h6>
				{else}
				<h6 class="font-14 {if in_array('a', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}">A.<span class="ms-1">{$item.option_a}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if in_array('b', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}">B.<span class="ms-1">{$item.option_b}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if in_array('c', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}">C.<span class="ms-1">{$item.option_c}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if in_array('d', $item.correct_answer_array)}font-500 color-green-dark{else}font-400{/if}">D.<span class="ms-1">{$item.option_d}</span></h6>
				{/if}
			</div>
		</div>      
		<div class="divider mt-2 mb-3"></div>
		<div class="row mb-0">
			<div class="col-2 pe-1">
				<div class="mx-0 mb-2">
					<h6 class="font-13 font-400 mb-0">Level</h6>
					<h3 class="font-15 mb-0">{$item.level}</h3>
				</div>
			</div>
			<div class="col-5">
				<div class="mx-0 mb-2">
					<h6 class="font-13 font-400 mb-0">Pembuat</h6>
					<h3 class="font-15 mb-0">{$item.fullname}</h3>
				</div>
			</div>
			{if $item.fullnameEditor}
			<div class="col-5 ps-1">
				<div class="mx-0 mb-2">
					<h6 class="font-13 font-400 mb-0">Di Edit</h6>
					<h3 class="font-15 mb-0">{$item.fullnameEditor}</h3>
				</div>
			</div>
			{/if}
			<div class="col-12 pe-1">
				<div class="mx-0 mb-2">
					<h6 class="font-13 font-400 mb-0">Di gunakan pada</h6>
					{if $exam_types}
					{foreach from=$exam_types item=n}
						<div class="d-inline-block chip-checkbox">
							<input 
								name="exam_type" 
								type="checkbox" 
								id="check{$item.id}_{$n}" 
								class="chip-input exam-type-checkbox"
								data-question-id="{$item.id}" 
								data-exam-type="{$n}"
								{if $item.exam_types && strpos($item.exam_types, $n) !== false}checked{/if}
							>
							<label for="check{$item.id}_{$n}" class="chip chip-small bg-dark-dark my-1">
								<i class="fa fa-check chip-icon chip-icon-check"></i>
								<i class="fa fa-times chip-icon chip-icon-times"></i>
								<span class="chip-label">{$n|strtoupper}</span>
							</label>
						</div>
					{/foreach}
					{/if}
				</div>
			</div>   

		</div>
	<a href='{"?p=exam_questions&edit={$item.id}"|surl}' class="btn btn-xxs mb-3 rounded-s text-uppercase font-900 shadow-s border-blue-dark float-end bg-blue-light">Edit</a>  
	<a href='javascript:void(0)' class="btn btn-xxs mb-3 me-2 rounded-s text-uppercase font-900 shadow-s border-green-dark float-end bg-green-light">{$item.question_type}</a> 
	</div>          
</div>
{/foreach}
</div>

{include file="footer.tpl"}
{literal}
<style>
.zoom-overlay {
    position: fixed;
    top: 0; left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.7);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1050;
}
.zoom-overlay img {
    max-width: 95%;
    max-height: 95%;
    border-radius: 10px;
}
</style>
<script>
document.addEventListener("DOMContentLoaded", function () {
    var examUpdateQuestionUrl = '{/literal}{"?p=exam_questions&update={$user.id}"|surl}{literal}';
    document.querySelectorAll(".exam-type-checkbox").forEach(function (checkbox) {
        checkbox.addEventListener("change", function () {
            const questionId = this.dataset.questionId;
            const examType = this.dataset.examType;
            const isChecked = this.checked;

			fetch(examUpdateQuestionUrl, {
				method: 'POST',
				headers: {'Content-Type': 'application/json'},
				body: JSON.stringify({
					action: isChecked ? "insert" : "delete",
					question_id: questionId,
					exam_type: examType
				})
			})
			.then(response => response.json())
			.then(data => {
                if (data.status == "success") {
					showAlert("Sukses", data.message);
                } else {
					showAlert("Error", data.message);
                    // Balikkan checkbox jika gagal
                    checkbox.checked = !isChecked;
                }
			})
			.catch(error => {
                console.error("Error:", error);
				showAlert("Error", error);
                checkbox.checked = !isChecked;
			});

		});
    });

	document.addEventListener("click", function(e) {
		if (e.target.classList.contains("zoom-on-click")) {
			const src = e.target.src;
			const overlay = document.createElement("div");
			overlay.classList.add("zoom-overlay");
			overlay.innerHTML = `<img src="${src}">`;
			document.body.appendChild(overlay);
			overlay.addEventListener("click", () => overlay.remove());
		}
	});

});
</script>
{/literal}