<?php /* Smarty version 2.6.19, created on 2017-09-22 21:28:33
         compiled from chatwin.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "header.tpl", 'smarty_include_vars' => array('jsload' => 'ajax','jsload2' => 'chat','focusme' => '1','showheader' => 'no')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<input type = "hidden" id = "userto" value = "<?php echo $this->_tpl_vars['userto']; ?>
" />
<input type = "hidden" id = "userto_id" value = "<?php echo $this->_tpl_vars['userto_id']; ?>
" />
<input type = "hidden" id = "username" value = "<?php echo $this->_tpl_vars['username']; ?>
" />

<div class="chat">

<h2 class=""><?php echo $this->_config[0]['vars']['chatwith']; ?>
 <?php echo $this->_tpl_vars['userto']; ?>
</h2>
<div id = "textwin" class="chattext"></div>
<?php if ($this->_tpl_vars['avatar'] != ""): ?>
<img src = "thumb.php?pic=files/avatar/<?php echo $this->_tpl_vars['avatar']; ?>
&amp;width=80" style="float:left;margin-left:10px;" alt="" />
<?php else: ?>
		<?php if ($this->_tpl_vars['user']['gender'] == 'f'): ?>
		<img src = "thumb.php?pic=templates/standard/images/no-avatar-female.jpg&amp;width=80;" style="float:left;margin-left:10px;" alt="" />
		<?php else: ?>
		<img src = "thumb.php?pic=templates/standard/images/no-avatar-male.jpg&amp;width=80;" style="float:left;margin-left:10px;" alt="" />
		<?php endif; ?>
<?php endif; ?>
<div class="row">
<input style="float:left;" type = "text" class="text" id = "chattext" onkeyup="getKeypressed(event);" />
<button onclick = "handleChatSubmit();return false;"  name = "submitb" id = "submitb" disabled="disabled" onchange = "this.disabled='';" type="submit"><?php echo $this->_config[0]['vars']['send']; ?>
</button>
</div>

<div id = "focusi"></div>
<input id = "charnum" type = "hidden" value = "0" />
<input id = "hasfocus" type = "hidden" value = "" />


<script type = "text/javascript">
startChat();
$('chattext').focus();
</script>

</div>

</body>
</html>