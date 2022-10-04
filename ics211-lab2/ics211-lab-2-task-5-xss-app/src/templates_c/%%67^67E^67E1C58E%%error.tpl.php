<?php /* Smarty version 2.6.19, created on 2011-08-14 11:59:36
         compiled from error.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "header.tpl", 'smarty_include_vars' => array('jsload' => 'ajax')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div class="login">
	<div class="login-in">

        <div class = "row">
        	<h1 style = "color:red;"><?php echo $this->_config[0]['vars']['error']; ?>
</h1>
            <div style = "color:red;" class = "row"><?php echo $this->_tpl_vars['errortext']; ?>
</div>
        </div>

    </div>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>