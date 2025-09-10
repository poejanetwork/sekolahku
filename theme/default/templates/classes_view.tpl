{include file="header1.tpl"}
<div class="content bg-theme rounded-m shadow-m mb-3">
    <div class="card-body">
    <div class="d-flex">
        <div>
            <img class="rounded me-2 shadow-xl preload-img" data-src='{$class_detail.teacher_avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="me-3">
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
        <h3 class="font-600">Kelas {$class_detail.class_name}</h3>
        <p class="font-11 mt-n2 color-highlight">Jumlah {$class_detail.total_students} siswa</p>
    </div>
</div>

<div class="card card-style">
<div class="content">
    <div class="clearfix"></div>
    {foreach from=$class_detail.students key=key item=student name=p}
        <a href='javascript:void(0)' class="d-flex" data-menu="menu-action-profile{$key}">
            <div>
                <img src='{$student.avatar|default:"{$settings.siteurl}/theme/default/assets/images/avatars/default_avatar.png"}' width="50" class="me-1">
            </div>
            <div class="align-self-center ps-1 mx-auto w-100">
                <h5 class="font-600 font-14 mb-n2">{$student.name}</h5>
                <div class="color-theme font-11">NISN: {$student.nisn}
                    <div class="align-self-center float-end text-end">
                        {if $student.is_manager == 1}
                        <h5 class="color-green-dark mb-0 text-end">Ketua Kelas</h5>
                        {/if}
                        <span class="color-theme d-block text-end">#{$smarty.foreach.p.iteration}</span>
                    </div>
                </div>
            </div>
        </a>
        <div class="divider mt-3 mb-3"></div>
    {/foreach}
                        
</div>
</div>
{include file="footer.tpl"}
{foreach from=$class_detail.students key=key item=student name=p}
<div id="menu-action-profile{$key}" class="menu menu-box-bottom menu-box-detached rounded-m" data-menu-height="250" data-menu-effect="menu-over">
    <h4 class="font-700 my-2 mx-3">{$student.name}</h4>
    <div class="divider divider-margins mb-0"></div>
    <div class="list-group list-custom-small ps-1 pe-3">

        <a href='{"?p=account_view&id={$student.id}"|surl}' class="external-link">
            <i class="mx-0 fa fa-dot-circle color-google"></i>
            <span class="font-13">{$lang.view_account}</span>
            <i class="fa fa-angle-right"></i>
        </a>

        {if $student.editable}
        <a href='{"?p=account_edit&id={$student.id}"|surl}' class="external-link">
            <i class="mx-0 fa fa-dot-circle color-google"></i>
            <span class="font-13">{$lang.edit_account}</span>
            <i class="fa fa-angle-right"></i>
        </a>
        {/if}

        <a href='{"?p=exam_account&id={$student.id}"|surl}' class="external-link">
            <i class="mx-0 fa fa-dot-circle color-google"></i>
            <span class="font-13">{$lang.exam_account}</span>
            <i class="fa fa-angle-right"></i>
        </a>
        
    </div>
</div>
{/foreach}