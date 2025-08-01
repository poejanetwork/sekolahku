<?php
/* Smarty version 5.4.5, created on 2025-07-27 03:09:27
  from 'file:captcha.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.4.5',
  'unifunc' => 'content_68859867cc9848_05692541',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a4cc713a844d537ad962bf5f424a3c6811a8a62c' => 
    array (
      0 => 'captcha.tpl',
      1 => 1714531159,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68859867cc9848_05692541 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = 'C:\\xampp\\htdocs\\co.ba\\theme\\default\\templates';
if ($_smarty_tpl->getValue('captcha')['check'][$_smarty_tpl->getValue('action')]) {?>

<?php if ($_smarty_tpl->getValue('captcha')['type'] == '1') {?>
<tr>
 <td class=menutxt><img src='<?php echo $_smarty_tpl->getSmarty()->getModifierCallback('surl')("?p=captcha&rand=".((string)$_smarty_tpl->getValue('rand')));?>
'></td>
 <td><input class="form-control" placeholder="<?php echo $_smarty_tpl->getValue('lang')['captcha'];?>
" type="text" name="captcha" value="" autocomplete="off" required></td>
</tr>
<?php }?>

<?php if ($_smarty_tpl->getValue('captcha')['type'] == '2') {
echo '<script'; ?>
 src='https://www.google.com/recaptcha/api.js'><?php echo '</script'; ?>
>
<tr>
 <td class=menutxt colspan=2>
<div class="g-recaptcha" data-sitekey="<?php echo $_smarty_tpl->getValue('settings')['captcha_recaptcha']['recaptcha_site_key'];?>
"></div>
 </td>
</tr>
<?php }?>

<?php if ($_smarty_tpl->getValue('captcha')['type'] == '3') {
echo '<script'; ?>
 src="https://www.google.com/recaptcha/api.js?render=<?php echo $_smarty_tpl->getValue('settings')['captcha_recaptcha']['recaptcha_site_key'];?>
"><?php echo '</script'; ?>
>

  <?php echo '<script'; ?>
>
  grecaptcha.ready(function() {
      grecaptcha.execute('<?php echo $_smarty_tpl->getValue('settings')['captcha_recaptcha']['recaptcha_site_key'];?>
', {action: '<?php echo $_smarty_tpl->getValue('action');?>
'}).then(function (token) {
                var rinput = document.getElementById('g-recaptcha');
                rinput.value = token;
            });
  });
  <?php echo '</script'; ?>
>

<tr>
 <td class=menutxt colspan=2>
<input type="hidden" name="g-recaptcha-response" id="g-recaptcha">
 </td>
</tr>
<?php }?>

<?php }
}
}
