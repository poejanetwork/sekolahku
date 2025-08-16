{include file="header1.tpl"}
<div class="card card-style mb-3 bg-10" data-card-height="110">
	<div class="card-center ps-3">
		<h1 class="color-white mb-n1 font-25">Daftar Kelas</h1>
		<p class="opacity-50 color-white mb-0">Seluruh kelas {$settings.sitename}</p>
	</div>
	<div class="card-overlay bg-black opacity-90"></div>
</div>
<div class="content">
    {foreach from=$list_classes item=item name=p}
    <a href='{"?p=classes&{$item.id}"|surl}' class="card card-style mb-3 mx-0">
        <div class="d-flex pt-3 pb-3">
            <div class="ps-3 ms-2 align-self-center">
                <h1 class="center-text mb-0 pt-2">
                    {$smarty.foreach.p.iteration}
                </h1>
            </div>
            <div class="align-self-center mt-1 ps-4">
                <h4 class="color-theme font-600">{$item.class_name}</h4>
                <p class="mt-n2 font-11 color-highlight mb-0">
                    Walas: {$item.teacher_name}
                </p>
            </div>
            <div class="ms-auto align-self-center me-3">
                <span class="badge {cycle values="bg-green-dark,bg-orange-dark"} color-white font-11 font-500 py-1 px-2">{$item.total_students} Siswa</span>
            </div>
        </div>
    </a>
    {/foreach}
</div>
{include file="footer.tpl"}