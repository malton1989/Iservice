<?php
/**
 * @package		mod_ajo_button
 * @copyright	Copyright (C) 2016 freakout.be All rights reserved.
 * @author 		Danny Buytaert danny@freakout.be
 * @license		GNU General Public License version 2 or later
 */
// No direct access
defined('_JEXEC') or die();

//load fontAwesome css ?
if ($params->get('loadIconfont','')=='1')
{
	$url="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css";
	$document = JFactory::getDocument();
	$document->addStyleSheet($url);
	
}

// Create Link from url field
$link = JStringPunycode::urlToUTF8($params->get('linkUrl', ''));
// Or create link from menu
if ($params->get('linkMenu'))
{
	$menu = JFactory::getApplication()->getMenu();
	$menuObject = $menu->getItem($params->get('linkMenu'));
	$link = $menuObject->link . "&Itemid=" . $params->get('linkMenu');
}

// create accessible icon
if ($params->get('iconClass'))
{
	$icon = '<span class="' . $params->get('iconClass') . '" aria-hidden="true"></span>';
}
else
{
	$icon = "";
}

//change button size class for Bootstrap 2
if ($params->get('bootstrapVersion')=='2'){
switch ($params->get ( 'buttonSize' )) {
	case "btn-lg" :
		$btnsize = "btn-large";
		break;
	case "btn-sm" :
		$btnsize = "btn-small";
		break;
	case "btn-xs" :
		$btnsize = "btn-mini";
		break;
	default :
		$btnsize = "";
}
}
else {
	$btnsize = $params->get ( 'buttonSize' );
}



$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'));

require JModuleHelper::getLayoutPath('mod_ajo_button', $params->get('layout', 'default'));