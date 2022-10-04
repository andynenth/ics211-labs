<?php /* Smarty version 2.6.19, created on 2011-08-14 11:58:00
         compiled from install3.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "header.tpl", 'smarty_include_vars' => array('title' => 'install','showheader' => 'no')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
				
				<div class="install" style="text-align:center;padding:5% 0;">
					<div style="text-align:left;width:500px;margin:0 auto;padding:25px 25px 0px 25px;background:white;border:1px solid;">
						<h1><?php echo $this->_config[0]['vars']['installcollabtive']; ?>
</h1>
					<div style="padding:16px 0 20px 0;">
					
					<h2><?php echo $this->_config[0]['vars']['installsuccess']; ?>
</h2>
					<?php echo $this->_config[0]['vars']['proceedtologin']; ?>

				</div>
				<div class="row-butn-bottom">
					<button onclick="location.href='index.php'" onfocus="this.blur();"><?php echo $this->_config[0]['vars']['login']; ?>
</button>
				</div>
				<div class="content-spacer"></div>
			</div>
		</div> 	</body>
</html>