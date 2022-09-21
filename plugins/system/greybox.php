<?php
/**
* @license     GNU General Public License, http://www.gnu.org/copyleft/gpl.html
**/
defined( '_JEXEC' ) or die( 'Restricted access' );

$mainframe->registerEvent( 'onAfterInitialise', 'load_greybox' );

function load_greybox()
{
	$jdoc = JFactory::getDocument();
    $base = JURI::base().'plugins/system/greybox';

    if(!stristr(JURI::base(), 'administrator/')) {
        $jdoc->addStyleSheet($base."/gb_styles.css");
        $jdoc->addScriptDeclaration('var GB_ROOT_DIR = "'.$base.'/";
                                     </script>
                                     <script type="text/javascript" src="'.$base.'/AJS.js"></script>
                                     <script type="text/javascript" src="'.$base.'/AJS_fx.js"></script>
                                     <script type="text/javascript" src="'.$base.'/gb_scripts.js"></script>
                                     <script type="text/javascript">
                                 ');
    }
    
}
?>