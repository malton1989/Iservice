<?php
/**
 * @package		mod_ajo_button
 * @copyright	Copyright (C) 2016 freakout.be All rights reserved.
 * @author 		Danny Buytaert danny@freakout.be
 * @license		GNU General Public License version 2 or later
 */
/**
 * @package     Joomla.Platform
 * @subpackage  Form
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */


defined('JPATH_PLATFORM') or die;

/**
 * Form Field class for the Joomla Platform.
 * Provides spacer markup to be used in form layouts.
 *
 * @since  11.1
 */
class JFormFieldSpacerplus extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 * @since  11.1
	 */
	protected $type = 'Spacerplus';

	/**
	 * Method to get the field input markup for a spacer.
	 * The spacer does not have accept input.
	 *
	 * @return  string  The field input markup.
	 *
	 * @since   11.1
	 */
	protected function getInput()
	{
		return $this->getSpacer();
	}

	/**
	 * Method to get the field label markup for a spacer.
	 * Use the label text or name from the XML element as the spacer or
	 * Use a hr="true" to automatically generate plain hr markup
	 *
	 * @return  string  The field label markup.
	 *
	 * @since   11.1
	 */
	protected function getLabel()
	{
		
		$html="";

	
		return $html;
		
		
		
	}

	protected function getSpacer()
	{
		$html = array();
		$class = !empty($this->class) ? ' class="' . $this->class . '"' : '';
		$icon=(string)$this->element['icon'];
		$bgcolor=(string)$this->element['bg'];
		$html[] = '<div class="" >';

	
		if ((string) $this->element['hr'] == 'top'){
	
			$html[] = '<hr' . $class . ' />';
		}
		$label = '';
	
		// Get the label text from the XML element, defaulting to the element name.
		$text = $this->element['label'] ? (string) $this->element['label'] : (string) $this->element['name'];
		$text = $this->translateLabel ? JText::_($text) : $text;
			
		//
	
		if (!empty($icon))
		{
			$icon='<i class="'.$icon.'"></i>&nbsp;';
		}
			
		//show tooltip if true
		$tooltip=(string)$this->element['tooltip'];
	
		// Build the class for the label.
		if ($tooltip==true){
			$class = !empty($this->description) ? 'hasTooltip' : '';
		}
	
		// Add the opening label tag and main attributes attributes.
		$label .= '<label id="' . $this->id . '-lbl" ' . $class . ' ';
	
		// If a description is specified, use it to build a tooltip.
		if ($tooltip==true){
			if (!empty($this->description))
			{
				JHtml::_('bootstrap.tooltip');
				$label .= ' title="' . JHtml::tooltipText(trim($text, ':'), JText::_($this->description), 0) . '"';
			}
		}
	
		// Add the label text and closing tag.
		$label .= '><h4>' ;
		if (!empty($icon))
		{
			$label .= $icon ;
		}
		$label .= $text . '</h4></label>';
		if (!empty($this->description))
		{
			$label .= '<p>'.JText::_($this->description).'</p>';
		}
		if ((string) $this->element['hr'] == 'bottom')
		{
			$label .= '<hr/>';
		}
		$html[] = $label;
	
	
		$html[] = '</div>';
	
		return implode('', $html);
	}
	
	
	/**
	 * Method to get the field title.
	 *
	 * @return  string  The field title.
	 *
	 * @since   11.1
	 */
	protected function getTitle()
	{
		return $this->getLabel();
	}
}
