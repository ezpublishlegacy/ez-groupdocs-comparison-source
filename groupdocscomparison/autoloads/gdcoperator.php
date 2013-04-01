<?php
 
// Which operators will load automatically? 
$eZTemplateOperatorArray = array();
 
// Operator: gvddata 
$eZTemplateOperatorArray[] = array( 'class' => 'GCDOperator',
                                    'operator_names' => array( 'gcd' ) ); 
?>