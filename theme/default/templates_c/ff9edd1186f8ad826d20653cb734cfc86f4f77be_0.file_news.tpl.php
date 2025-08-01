<?php
/* Smarty version 5.4.5, created on 2025-07-28 07:06:24
  from 'file:news.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_68872170298354_30658445',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ff9edd1186f8ad826d20653cb734cfc86f4f77be' => 
    array (
      0 => 'news.tpl',
      1 => 1751343780,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:header1.tpl' => 1,
    'file:footer.tpl' => 1,
  ),
))) {
function content_68872170298354_30658445 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
$_smarty_tpl->renderSubTemplate("file:header1.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?>

<?php if ($_smarty_tpl->getValue('newscat')) {?>
	<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('newscat'), 'nc');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('nc')->value) {
$foreach0DoElse = false;
?>
	<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('nc')['id']));?>
'>
	<div class="card card-style" data-card-height="230">
		<div class="card-top">
			<span class="badge bg-green-dark px-2 py-2 color-white m-3 float-end"><i class="fa fa-star pe-2 color-yellow-light"></i><?php echo $_smarty_tpl->getValue('nc')['category'];?>
</span>
		</div>
		<div class="card-bottom bg-white p-3">
			<h4 class="font-500 font-16">
				<?php echo $_smarty_tpl->getValue('nc')['title'];?>

			</h4>
			<span class="opacity-50 font-10"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('nc')['created_at'],"%e %B %Y, %H:%m:%s");?>
</span>
		</div>
		<img src="<?php echo $_smarty_tpl->getValue('nc')['thumbnail'];?>
" class="img-fluid">
	</div>
	</a>
	<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
	<nav aria-label="pagination-page">
		<ul class="pagination pagination- justify-content-center">
			<?php echo $_smarty_tpl->getValue('pages');?>

		</ul>
	</nav>
<?php } elseif ($_smarty_tpl->getValue('newsid')) {?>
<div class="card card-style">
	<div class="content">
		<h1 class="font-600 font-18 line-height-m"><?php echo $_smarty_tpl->getValue('newsid')['title'];?>
</h1>
		<span class="d-block mb-3"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('newsid')['created_at'],"%e %B %Y, %H:%m:%s");?>
</span>
		<a href='https://www.facebook.com/sharer/sharer.php?u=<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('newsid')['id']));?>
' class="shareToFacebook icon icon-xs rounded-sm bg-facebook" target="_blank"><i class="fab fa-facebook-f"></i></a>
		<a href='http://twitter.com/share?text=<?php echo $_smarty_tpl->getValue('newsid')['title'];?>
%20<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('newsid')['id']));?>
' class="shareToTwitter icon icon-xs rounded-sm bg-twitter" target="_blank"><i class="fab fa-twitter"></i></a>
		<a href='whatsapp://send?text=<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('newsid')['id']));?>
' class="shareToWhatsApp icon icon-xs rounded-sm bg-whatsapp" target="_blank"><i class="fab fa-whatsapp"></i></a>
		<a href='https://www.linkedin.com/shareArticle?mini=true&amp;url=<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('newsid')['id']));?>
&amp;title=<?php echo $_smarty_tpl->getValue('newsid')['title'];?>
&amp;summary=&amp;source=' class="shareToLinkedIn icon icon-xs rounded-sm bg-linkedin" target="_blank"><i class="fab fa-linkedin-in"></i></a>
		<a href='mailto:?body=<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('newsid')['id']));?>
' class="shareToMail icon icon-xs rounded-sm bg-mail" target="_blank"><i class="fa fa-envelope"></i></a>
	</div>
	<img src="<?php echo $_smarty_tpl->getValue('newsid')['thumbnail'];?>
" class="img-fluid">
	<span class="d-block text-end font-10 pe-3 opacity-60 mt-n4 color-white">Image Source: <?php echo $_smarty_tpl->getValue('settings')['sitename'];?>
</span>
	<div class="content">
		<p>
			<?php $_template = new \Smarty\Template('eval:'.nl2br((string) $_smarty_tpl->getValue('newsid')['full_text'], (bool) 1), $_smarty_tpl->getSmarty(), $_smarty_tpl);echo $_template->fetch(); ?>
		</p>
	</div>
</div>
<?php } else { ?>
<div class="card card-style">
	<div class="content mb-0">
		<h5 class="font-18 font-600 color-highlight pb-3">Berita</h5>
		<?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('news'), 'n');
$foreach1DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('n')->value) {
$foreach1DoElse = false;
?>
		<a href='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=news&".((string)$_smarty_tpl->getValue('n')['id']));?>
'>
			<div class="d-flex mb-3">
				<div class="align-self-center">
					<h5 class="font-500 font-15 pb-1"><?php echo $_smarty_tpl->getValue('n')['title'];?>
</h5>
					<span class="badge text-uppercase px-2 py-1 bg-green-dark">Web Design</span>
					<span class="color-theme font-11 ps-2 opacity-50"><?php echo $_smarty_tpl->getSmarty()->getModifierCallback('date_format')($_smarty_tpl->getValue('n')['created_at'],"%B %e, %Y");?>
</span>
				</div>
				<div class="align-self-center ms-auto">
					<img src="<?php echo $_smarty_tpl->getValue('n')['thumbnail'];?>
" class="rounded-m ms-3" width="90">
				</div>
			</div>
		</a>
		<div class="divider mb-3"></div>
		<?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
	</div>
</div>
<nav aria-label="pagination-page">
	<ul class="pagination pagination- justify-content-center">
		<?php echo $_smarty_tpl->getValue('pages');?>

	</ul>
</nav>
<?php }
$_smarty_tpl->renderSubTemplate("file:footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
}
}
