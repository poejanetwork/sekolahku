{include file="header1.tpl"}
<div class="card card-style">
    <div class="content">
        <h3 class="float-start font-16">{$lang.schedule} {$lang.lesson}</h3>
        <div class="clearfix"></div>
        <p class="line-height-s">
            {$lang.years} Ajaran <strong class="color-theme">2025/2026</strong>
        </p>
    </div>
</div>
<div class="content"><a href='{"?p=schedule&cetak"|surl}' class="btn btn-border btn-m btn-full mb-3 rounded-sm text-uppercase font-900 border-light border-5 bg-highlight"><i class="fa fa-print me-2"></i> Cetak {$lang.schedule}</a></div>
{foreach from=$dayOrder item=do}
{if isset($schedules[$do]) && $schedules[$do]|@count > 0}
<div class="card card-style">
    <div class="content">
        <h3 class="mb-0 text-center">Hari {$do}</h3>
    </div>
    <div class="card-bodys">
        <div class="table-responsive">
            <table class="table table-bordered table-dark table-sm text-center rounded-sm shadow-l mb-0">
            <thead>
                <tr>
                    <th rowspan="2" scope="col" class="py-3 font-14 align-middle">Jam<br/>Ke</th>
                    <th rowspan="2" scope="col" class="py-3 font-14 align-middle">Waktu<br/>Belajar</th>
                    <th colspan="{$classNames|@count}" scope="col" class="py-3 font-14">Kelas</th>
                </tr>
                <tr>
                    {foreach from=$classNames item=cn}
                    <th scope="col" class="py-3 font-14">{$cn}</th>
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
                                        {if !empty($parts[1])}
                                        {$parts[1]|upper|escape}
                                        {else}
                                        -
                                        {/if}
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