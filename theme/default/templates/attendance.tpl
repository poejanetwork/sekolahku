{include file="header1.tpl"}
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Presensi/Absensi</h1>
		<p class="opacity-50 color-white mb-0">Seluruh kelas {$settings.sitename}</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>

<div class="card card-style">
    <div class="content text-center">
      <small>Hari ini</small>
    <h4 class="mb-0">{$todayDate}</h4>
    </div>
</div>

{if $list_classes}
<div class="accordion mb-2" id="accordion-presensi">
{foreach from=$list_classes item=item name=p}
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
                <h4 class="color-white font-600">{$item.class_name}</h4>
                <p class="mt-n2 font-11 color-white mb-0">
                    Walas: {$item.teacher_name}
                </p>
            </div>
            <div class="ms-auto align-self-center me-3">
                <span class="badge bg-blue-dark color-white font-11 font-500 py-1 px-2">{$item.total_students} Siswa</span>
            </div>
        </div>
    </div>
    <div class="card-overlay bg-highlight opacity-95"></div>
    <div class="card-overlay dark-mode-tint"></div>
</div>
<a style="height:70px;" href="javascript:void(0)" class="btn collapsed" data-bs-toggle="collapse" data-bs-target="#collapse{$smarty.foreach.p.iteration}" aria-expanded="false"></a>
<div id="collapse{$smarty.foreach.p.iteration}" class="collapse content mt-0" data-bs-parent="#accordion-presensi">
    {foreach from=$item.all_students item=students name=ps}
    <div class="d-flex border-bottom">
        <div class="ps-3 ms-2 align-self-center">
            <h1 class="center-text mb-0 pt-2">
                {$smarty.foreach.ps.iteration}
            </h1>
        </div>
        <div class="align-self-center ps-3">
            <h5 class="font-600 font-14 mb-n1">{$students.fullname}</h5>
            {if $students.notes}{$students.notes}{/if}
            <input type="hidden" name="student_id[{$item.id}][]" value="{$students.id}">
        </div>
        <div class="my-auto ms-auto">
            {$students.attendance_status|ucfirst}
        </div>
    </div>
    {/foreach}
</div>
</div>
{/foreach}
</div>
{/if}
{include file="footer.tpl"}