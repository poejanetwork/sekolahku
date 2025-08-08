{include file="header1.tpl"}
<div class="content bg-theme rounded-m shadow-m mb-3">
    <div class="card-body">
    <div class="d-flex">
        <div>
            <img src='{$class_detail.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="me-3">
        </div>
        <div>
            <h1 class="mb-0 pt-1">{$class_detail.teacher_name|default:"Belum Ada"}</h1>
            <p class="color-highlight font-11 mt-n2">Wali Kelas {$class_detail.class_name}</p>
        </div>
    </div>
    <div class="divider my-2"></div>
    <div class="d-flex justify-content-between">
        <div class="ps-3 ms-1 align-self-center">
            <h4 class="font-16 font-600 mb-0">{$class_detail.class_manager}</h4>
            <p class="color-highlight mt-n1 font-11">
                Ketua Kelas
            </p>
        </div>
        <div class="pe-3 align-self-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-award" data-feather-line="1" data-feather-size="43" data-feather-color="yellow-dark" data-feather-bg="yellow-fade-light" style="stroke-width: 1; width: 43px; height: 43px;"><circle cx="12" cy="8" r="7"></circle><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"></polyline></svg>
        </div>
    </div>
    </div>
</div>

<div class="card card-style">
<div class="content">
    <h5 class="float-start font-16">Kelas {$class_detail.class_name} ({$class_detail.total_students} siswa)</h5>
    <div class="clearfix"></div>
    {foreach from=$class_detail.students item=student name=p}
        <div class="d-flex">
            <div>
                <img src='{$student.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="me-3">
            </div>
            <div class="align-self-center ps-3">
                <h5 class="font-600 font-14 mb-n2">{$student.name}</h5>
                <span class="color-theme font-11">NISN: {$student.nisn}</span>
            </div>
            <div class="align-self-center ms-auto">
                {if $student.is_manager == 1}
                <h5 class="color-green-dark mb-0 text-end">Ketua Kelas</h5>
                {/if}
                <span class="color-theme d-block text-end">#{$smarty.foreach.p.iteration}</span>
            </div>
        </div>
        <div class="divider mt-3 mb-3"></div>
    {/foreach}
                        
</div>
</div>
{include file="footer.tpl"}