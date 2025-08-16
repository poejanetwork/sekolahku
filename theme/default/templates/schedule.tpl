{include file="header1.tpl"}
<div class="card card-style">
    <div class="content">
        <div class="d-flex">
            <div class="align-self-center">
                <h4>Jadwal Pelajaran</h4>
                <p class="line-height-s">
                    Tahun Ajaran <strong class="color-theme">2025/2026</strong>
                </p>
            </div>
            <div class="align-self-center ps-4">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle" data-feather-line="1" data-feather-size="50" data-feather-color="green-dark" data-feather-bg="none" style="stroke-width: 1; width: 50px; height: 50px;"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
            </div>
        </div>
    </div>
</div>
{foreach from=$dayOrder item=do}
{if isset($schedules[$do]) && $schedules[$do]|@count > 0}
<div class="card card-style">
    <div class="content">
        <h3 class="mb-3">Hari {$do}</h3>
<div class="table-responsive">
            <table class="table table-borderless text-center rounded-sm shadow-l">
            <thead>
                <tr>
                    <th rowspan="2" scope="col" class="bg-dark-dark border-dark-dark color-white py-3 font-14 align-middle">Jam<br/>Ke</th>
                    <th rowspan="2" scope="col" class="bg-dark-dark border-dark-dark color-white py-3 font-14 align-middle">Waktu<br/>Belajar</th>
                    <th colspan="{$classNames|@count}" scope="col" class="bg-dark-dark border-dark-dark color-white py-3 font-14">Kelas</th>
                </tr>
                <tr>
                    {foreach from=$classNames item=cn}
                    <th scope="col" class="bg-dark-dark border-dark-dark color-white py-3 font-14">{$cn}</th>
                    {/foreach}
                </tr>
            </thead>
            <tbody>
                {foreach from=$schedules[$do] item=row name=c}
                {assign var="counter" value=$smarty.foreach.c.iteration}
                <tr class="{if $counter % 2 == 1}table-active{else}bg-dark-light{/if}">
                    <th scope="row">{if $row.time_to}{$row.time_to}{/if}</th>
                    <td>{$row.class_start_at|substr:0:5} - {$row.class_finish_at|substr:0:5}</td>
                    {if $row.marking}
                        <td colspan="{$classNames|@count}">
                            {$row.marking|escape}
                        </td>
                    {else}
                        {foreach from=$classIDs item=cid}
                        <td>
                            {assign var=filled value=false}
                            {if $row.subjects}
                                {assign var=subs value=$row.subjects|split:","}
                                {foreach from=$subs item=s}
                                    {assign var=parts value=$s|split:":"}
                                    {if $parts[0] == $cid}
                                        {$parts[1]|upper|escape}
                                        {assign var=filled value=true}
                                        {break}
                                    {/if}
                                {/foreach}
                            {/if}
                            {if !$filled}-{/if}
                        </td>
                        {/foreach}
                    {/if}
                </tr>
                {/foreach}
            </tbody>
        </table>
</div>
    </div>
</div>
{/if}
{/foreach}

{include file="footer.tpl"}