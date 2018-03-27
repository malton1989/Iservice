<?php
/**
 * @package		mod_ajo_button
 * @copyright	Copyright (C) 2016 freakout.be All rights reserved.
 * @author 		Danny Buytaert danny@freakout.be
 * @license		GNU General Public License version 2 or later
 */
// No direct access
defined ( '_JEXEC' ) or die ();
?>
<div
	class="<?php echo $params->get('contentPosition','')?> <?php echo $moduleclass_sfx ?>">
		<?php if ($params->get('preTitle')):?>
		<h3>
			<?php echo $params->get('preTitle');?>
		</h3>
		<?php endif; ?>
		
		<?php if ($params->get('iconPosition','')=='top'):?>
				<?php echo $icon;?>
				<?php endif;?>
		<?php if ($params->get('preText')):?>
		<p>
			<?php echo $params->get('preText');?>
		</p>
		<?php endif; ?>

		<p>
		<a
			class="btn <?php echo $btnsize ?> <?php echo $params->get('buttonStyle','') ?> <?php echo $params->get('buttonBlock','') ?> <?php echo $params->get('buttonClass','') ?>"
			<?php if ($link):?> href="<?php echo JRoute::_($link);?>"
			<?php endif; ?> <?php if ($params->get('onClick')):?>
			onclick="<?php echo $params->get('onClick','') ?>" <?php endif;?>><?php if ($params->get('iconPosition','')=='buttonleft'):?><?php echo $icon;?>&nbsp;<?php endif;?><?php echo $params->get('buttonText'); ?><?php if ($params->get('iconPosition','')=='buttonright'):?>&nbsp;<?php echo $icon;?><?php endif;?></a>
	</p>

			<?php if ($params->get('afterTitle')):?>
		<h3>
			<?php echo $params->get('afterTitle');?>
		</h3>
		<?php endif; ?>
		<?php if ($params->get('afterText')):?>
		<p>
			<?php echo $params->get('afterText');?>
		</p>
		<?php endif; ?>
</div>
