<?php /* Smarty version 2.6.19, created on 2011-08-14 11:57:54
         compiled from install2.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "header.tpl", 'smarty_include_vars' => array('title' => 'install','showheader' => 'no')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div class="install" style="text-align:center;padding:5% 0 0 0;">
	<div style="text-align:left;width:500px;margin:0 auto;padding:25px 25px 15px 25px;background:white;border:1px solid;">

		<h1><?php echo $this->_config[0]['vars']['installcollabtive']; ?>
</h1>

		<div style="padding:16px 0 16px 0;">
			<h2><?php echo $this->_config[0]['vars']['installstep']; ?>
 3</h2>
            <em><?php echo $this->_config[0]['vars']['createadmin']; ?>
</em><br /><br />
            
			<form class = "main" name = "adminuser" method = "post" enctype="multipart/form-data" action = "install.php?action=step3">
				<fieldset>
					<div class = "row"><label for = "username"><?php echo $this->_config[0]['vars']['name']; ?>
:</label><input type = "text" name = "name" id = "username" /></div>
					<div class = "row"><label for = "pass"><?php echo $this->_config[0]['vars']['password']; ?>
:</label><input type = "password" name = "pass" id = "pass" /></div>
				</fieldset>
				<br />
					<div class="row-butn-bottom">
						<label>&nbsp;</label>
						<button type="submit"  onfocus="this.blur();"><?php echo $this->_config[0]['vars']['continue']; ?>
</button>
					</div>
				</fieldset>
			</form>

				</div>
			</div>
		</div> 	</body>
</html>