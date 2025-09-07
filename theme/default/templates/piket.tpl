{include file="header1.tpl"}
<div class="calendar bg-theme shadow-xl rounded-m">
    <div class="cal-header">
        <h4 class="text-center text-uppercase font-700 font-15 bg-theme color-theme pagination justify-content-center my-2">
            Jadwal Piket Bulan
        </h4>
		<nav aria-label="pagination-demo">
            <ul class="pagination pagination- justify-content-center">
                <li class="page-item">
                    <a class="page-link rounded-xs color-black bg-transparent bg-theme shadow-l border-0" href='{"?p=piket&piket_date_month={$date.prevMonth}&piket_date_year={$date.prevYear}"|surl}' tabindex="-1" aria-disabled="true"><i class="fa">« {$date.prevMonthName}</i></a>
                </li>
                <li class="page-item active"><a class="page-link rounded-xs color-black shadow-xl border-0" href="#">{$date.currentMonthName} {$date.currentYear}</a></li>
                <li class="page-item">
                    <a class="page-link rounded-xs color-black bg-transparent bg-theme shadow-l border-0" href='{"?p=piket&piket_date_month={$date.nextMonth}&piket_date_year={$date.nextYear}"|surl}'><i class="fa">{$date.nextMonthName} »</i></a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="clearfix"></div>
    <div class="divider mb-1"></div>
    <div class="cal-days bg-theme opacity-80 pt-2 pb-2">
        <a href="#" class="color-highlight">SUN</a>
        <a href="#" class="color-highlight">MON</a>
        <a href="#" class="color-highlight">TUE</a>
        <a href="#" class="color-highlight">WED</a>
        <a href="#" class="color-highlight">THU</a>
        <a href="#" class="color-highlight">FRI</a>
        <a href="#" class="color-highlight">SAT</a>
        <div class="clearfix"></div>
    </div>
    <div class="divider mb-1"></div>
    <div class="cal-dates cal-dates-border">
        {foreach from=$calendarDays item=day name=days}
        {if $smarty.foreach.days.index % 7 == 0}<div class="cal-week-row" style="display:flex;">{/if}
            {if $day.day == ''}
                <a href="#" class="cal-disabled"><span>&nbsp;</span><div>&nbsp;</div></a>
            {else}
                <a href="#" class="{if $day.date == $smarty.now|date_format:'%Y-%m-%d'}cal-selected{/if}">
                    <span {if $day.date == $smarty.now|date_format:'%Y-%m-%d'}class="bg-highlight rounded-1 px-2"{/if}>{$day.day}</span>
                    {if $day.piket|@count > 0}
                        {foreach from=$day.piket item=guru}
                            <div class="badge d-block my-1 mx-1 {if $user.username|strtoupper==$guru|escape|strtoupper}alert-danger{else}alert-info{/if} ">{$guru|escape|strtoupper}</div>
                        {/foreach}
					{else}
						<div>&nbsp;</div>
					{/if}
                </a>
            {/if}
        {if ($smarty.foreach.days.index+1) % 7 == 0}</div>{/if}
        {/foreach}
        <div class="clearfix"></div>
    </div>
</div>
{include file="footer.tpl"}