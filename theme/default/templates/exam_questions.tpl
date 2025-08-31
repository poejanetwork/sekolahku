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

<div class="content">
	<h5 class="font-16 font-500 text-center">Jumlah  {$exam_questions|count} Soal</h5>
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
	<div class="content mb-2 mt-1">
		<div class="d-flex">
			<div class="w-100 align-self-center ps-3">
				<h6 class="font-14 {if $item.option_a|lower|trim == $item.correct_answer|lower|trim}font-500 color-green-dark{else}font-400{/if}">A.<span class="ms-1">{$item.option_a}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if $item.option_b|lower|trim == $item.correct_answer|lower|trim}font-500 color-green-dark{else}font-400{/if}">B.<span class="ms-1">{$item.option_b}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if $item.option_c|lower|trim == $item.correct_answer|lower|trim}font-500 color-green-dark{else}font-400{/if}">C.<span class="ms-1">{$item.option_c}</span></h6>
				<div class="divider mb-2 mt-1"></div>
				<h6 class="font-14 {if $item.option_d|lower|trim == $item.correct_answer|lower|trim}font-500 color-green-dark{else}font-400{/if}">D.<span class="ms-1">{$item.option_d}</span></h6>
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
	</div>          
</div>
{/foreach}
</div>

{include file="footer.tpl"}
{literal}
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
});
</script>
{/literal}