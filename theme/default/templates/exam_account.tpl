{include file="header1.tpl"}
{if $account_view_exam}
<div class="card card-style">
	<div class="content">
		<div class="d-flex">
			<div class="text-center">
				<img src='{$account_view_exam.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="mx-2 bg-highlight rounded-xl d-block">
				{if $account_view_exam.editable}<a class="badge text-uppercase px-1 py-1 bg-blue-dark" href='{"?p=account_edit&id={$account_view_exam.id}"|surl}'>edit</a>{/if}
			</div>
			<div>
				<h2 class="mb-0 pt-1">{$account_view_exam.fullname}</h2>
				<p class="font-11 mt-n0 color-highlight">{$account_view_exam.email}</p>
			</div>
		</div>
		<div class="row mt-3 mb-0">
			<div class="col-7">
				<h5 class="font-500 opacity-80 font-13 mb-0">{$lang.class}</h5>
			</div>
			<div class="col-5">
				<h5 class="font-600 font-13 mb-0">{$account_view_exam.class_name}</h5>
			</div>
			<div class="divider w-100 mt-2 mb-2 divider-margins"></div>
			<div class="col-7">
				<h5 class="font-500 opacity-80 font-13 mb-0">{$lang.class_master}</h5>
			</div>
			<div class="col-5">
				<h5 class="font-600 font-13 mb-0">{$account_view_exam.teacher_name}</h5>
			</div>
			<div class="divider w-100 mt-2 mb-2 divider-margins"></div>

		</div>
	</div>
</div>

<div class="content">
<div class="accordion" id="accordion-ujian">

	{foreach from=$rekap_exam_list item=semester_list key=ac_year name=ac_loop}
	<div class="card card-style mb-0 mx-0">
		<div class="d-flex pt-3 pb-3">
			<div class="ps-3 ms-2 align-self-center">
				<h1 class="center-text mb-0 pt-2">
					01
				</h1>
			</div>
			<div class="align-self-center mt-1 ps-4">
				<h4 class="color-theme font-600">Tahun Ajaran {$ac_year}</h4>
				<p class="mt-n2 font-11 color-highlight mb-0">
					{foreach from=$semester_list item=details key=semester}
						Semester {$semester}
					{/foreach}
				</p>
			</div>
			<div class="ms-auto align-self-center me-3">
				<span class="btn bg-green-dark color-white font-11 font-500 py-1 px-2 accordion-btn no-effect" data-bs-toggle="collapse" data-bs-target="#collapse{$smarty.foreach.loopname.index}">Hasil <i class="fa fa-arrow-down font-10"></i></span>
			</div>
		</div>
	</div>
	<div id="collapse{$smarty.foreach.loopname.index}" class="bg-white rounded border border-1 border-success mt-n3 collapse" data-bs-parent="#accordion-ujian">
		{foreach from=$semester_list item=details key=semester}
			{foreach from=$details.exam_types item=major_list key=exam_type}
				<div class="content">
					<h3 class="mb-0">Ujian {$exam_type}</h3>
					<p class="mb-2">
						Hasil nilai ujian
					</p>

					<div class="row mb-0">
						<div class="col-6">
							<h5 class="font-14 font-500">Mata pelajaran</h5>
						</div>
						<div class="col-6 text-center">
							<h5 class="font-14 font-500">Nilai</h5>
						</div>
					</div>
					<div class="divider mt-2 mb-2"></div>
					{foreach from=$major_list item=exams key=major}
					<a href="#" class="row mb-0">
						<div class="col-6">
							<span class="font-13 color-theme opacity-60">{$major|strtoupper}</span>
						</div>
						<div class="col-6 text-center">
							<span class="font-13 color-theme opacity-60">{$exams.total_score}</span>
						</div>
					</a>
					<div class="divider mt-2 mb-2"></div>
					{/foreach}

				</div>
			{/foreach}
		{/foreach}
	</div>
	{/foreach}
	
</div>
</div>
{/if}

{include file="footer.tpl"}