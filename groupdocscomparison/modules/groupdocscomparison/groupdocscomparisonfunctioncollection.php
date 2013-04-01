<?php
 include_once( 'extension/groupdocscomparison/classes/groupdocscomparison.php' );
/*
class GroupdocsComparisonFunctionCollection
{

function GroupdocsComparisonFunctionCollection()
{
}

function &fetchList( $offset, $limit )
{
$parameters = array( 'offset' => $offset,
'limit' => $limit );
$lista =& Groupdocscomparison( $parameters );

return array( 'result' => &$lista );
}

}
*/
class GroupDocsComparisonFunctionCollection
{ 
    public function __construct() 
    {
        // ...
    }
 
    /*
     * Is opened by('modul1', 'list', hash('as_object', $bool ) ) fetch
     * @param bool $asObject
     */ 
    public static function fetchList( $asObject ) 
    { 
        return array( 'result' => GroupDocsComparison::fetchList( $asObject ) ); 
    }
 
    /*
     * Is opened by('modul1', 'count', hash() ) fetch
     */
    public static function fetchJacExtensionDataListCount()
    { 
        return array( 'result' => GroupDocsComparison::getListCount() ); 
    } 
} 
?>