<?php
error_reporting(0);

if(isset($_COOKIE["PHPSESSID"]))
{
}
else
{
 ini_set("session.save_path", "/home/pacificc/public_html/readsomestuff.com/tmp");
 ini_set("session.save_handler","files");
 ini_set("session.use_cookies","1"); 
}


session_start();
// Copyright (C) 2008 by SCHAFFENSKRAFT.INFO
// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
JHTML::_('behavior.mootools');
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >

<head>
<jdoc:include type="head" />
  <link rel="shortcut icon" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/images/<?php echo $this->params->get('templatecolor'); ?>/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/template.css" type="text/css" />
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/joomla.css" type="text/css" />
  <link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/<?php echo $this->params->get('templatecolor'); ?>.css" type="text/css" />
  <!--[if IE]><style type="text/css" media="screen">body {behavior: url(<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/csshover.htc);}</style><![endif]-->
  <?php if ($this->params->get('TopLink')) : ?>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/smoothscroll.js"></script>
  <?php endif; ?>
  <?php if ($this->params->get('Link type of Left')) : ?>
  <script type="text/javascript" src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/moomenu.js"></script>
  <?php endif; ?>
  
  <?php
	if($this->countModules('left') == 0) $contentwidth = "_full";
	if($this->countModules('right') == 0) $componentwidth = "_full";
	if($this->countModules('user2') == 0) $user1width = "_full";
	if($this->countModules('user1') == 0) $user2width = "_full";
  ?>
  
  <style type="text/css">
	#header { width: <?php echo $this->params->get('TemplateWidth'); ?>; }
	#container_2 { width: <?php echo $this->params->get('TemplateWidth'); ?>; }
	#footer_1 { width: <?php echo $this->params->get('TemplateWidth'); ?>; }
	#footer_2 { width: <?php echo $this->params->get('TemplateWidth'); ?>; }
  </style>

</head>

<body>
<div><a id="top" name="top"></a></div>

<jdoc:include type="message" />

<div id='header' style='background: url(/templates/sk_quadcol/images/grey/header_lightorange.png) no-repeat 0 0;'></div>

<div id="container_1">
	<div id="container_2">
		<?php if($this->countModules('left')) : ?>
		<div id="left">
			<div id="left_m">
				<div id="left_l">
					<div id="left_r">
						<jdoc:include type="modules" name="left" style="rounded" />
					</div>
				</div>
			</div>
		</div>
		<?php endif; ?>
		<div id="placeholder"></div>
		<div id="content_outer<?php echo $contentwidth; ?>">
			<div id="content_m">
				<div id="content_l">
					<div id="content_r">
						<div id="content_inside">
							<div id="topmenu">
								<jdoc:include type="modules" name="user3" />
							</div>
							<div id="top_user">
								<?php if($this->countModules('user1')) : ?>
								<div id="user1<?php echo $user1width; ?>">
									<jdoc:include type="modules" name="user1" style="rounded" />
								</div>
								<?php endif; ?>
								<?php if($this->countModules('user2')) : ?>
								<div id="user2<?php echo $user2width; ?>">
									<jdoc:include type="modules" name="user2" style="rounded" />
								</div>
								<?php endif; ?>
								<div class="clr"></div>
							</div>
							<div id="component">
								<div id="component_inside<?php echo $componentwidth; ?>">
									<jdoc:include type="component" />
								</div>
								<?php if($this->countModules('right')) : ?>
								<div id="right">
									<jdoc:include type="modules" name="right" style="rounded" />
								</div>
								<?php endif; ?>
								<div class="clr"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>

<div id="footer">
	<div id="footer_1">
<jdoc:include type="modules" name="footer" />
		<?php if ($this->params->get('TopLink')) : ?>
		<a href="#top"><?php echo JText::_('to top') ?></a> 
		<?php endif; ?>
	</div>
	
</div>

</body>

</html>