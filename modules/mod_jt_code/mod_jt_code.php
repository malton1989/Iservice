<?php defined('_JEXEC') or die;

$document 						= JFactory::getDocument();
$class_sfx = htmlspecialchars($params->get('class_sfx'));

require( JModuleHelper::getLayoutPath( 'mod_jt_code', "default" ) );