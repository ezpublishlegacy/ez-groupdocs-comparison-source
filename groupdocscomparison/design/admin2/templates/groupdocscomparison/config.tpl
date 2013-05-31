<h3>Enter GroupDocs Embed Key and File ID</h3>
<div style="padding:10px;border:3px double gray;width:675px;">
	<form method="post" action={'groupdocscomparison/config'|ezurl}>
	<table><tr>
            <td><span style="color:blue">Embed Key:</span> </td>
            <td colspan="2"><input type="text" name="embed_key" size="80" value=""></td>
            </tr>
            <tr>
		<td><span style="color:blue">File ID:</span> </td>
			<td colspan="2"><input type="text" name="file_id" size="80" value=""></td>
		</tr>
		<tr>
			<td><span style="color:blue">Width:</span> </td>
			<td><input type="text" name="width" size="10" value=""></td>
			<td>=> (if empty by default = 100% to sute website layout)</td>
		</tr>
		<tr>
			<td><span style="color:blue">Height:</span> </td>
			<td><input type="text" name="height" size="10" value=""></td>
			<td>=> (if empty by default = 300px )</td>
		</tr>
		<tr>
			<td colspan="3"><input type="submit" value="Save" style="color:green"><br />
            <a target="blank" href="http://groupdocs.com/docs/display/gendoc/FAQs">See our FAQ</a> to learn how to use Comparison.
            </td>
	</tr>
    </table>
	</form>
</div>
<hr>
To <u>display</u> GroupDocs file on your website, just copy the <span style="color:red;font-weight:bold;">"Hook"</span>, paste it to any page and save it.
<hr>
<h3>GroupDocs Files</h3>
<table border=1><tr>
<th style="padding:5px;color:red">
Hook to Copy
</th>
<th style="padding:5px;color:blue">
Embed Key's
</th>
<th style="padding:5px;color:blue">
File IDs
</th>
<th style="padding:5px;color:blue">
Width
</th>
<th style="padding:5px;color:blue">
Height
</th>
<th style="width:60px">
Actions
</th>
{*List: {fetch( 'groupdocscomparison', 'list', hash( 'as_object', true() ) )|attribute( 'show' )} - to use this just need to add functions in config.php*}
{if is_set($data_array)} 
    
    {foreach $data_array as $index => $item}
        
        </tr><tr><td style="padding:5px;">{$item[2]} </td><td style="padding:5px;"> {$item[0]}</td>
		<td style="padding:5px;">{$item[1]}</td><td style="padding:5px;">{$item[3]}</td>
        <td style="padding:5px;">{$item[4]}</td>
		<td>
		<div style="float:left"><input style="width:30px;color:red;" type="button" value="Del" onclick="del({$index})"></div>
		<div style="float:left"><input style="width:30px;color:green;" type="button" value="Vew" onclick="vew('{$item[0]}/{$item[1]}')"></div>
		</td>
    {/foreach} 
     
{else} 
    <p>Attention: no existing data!!</p> 
{/if}
</tr></table>

{literal}
<script language="JavaScript" type="text/javascript">
<!--
     function del(id){
        var r=confirm("Do you want to delete this file ?");
		if (r==true)
			location.href = 'config?del_id='+id;
    }

	function vew(id){
        cmsName = 'ezPublish-Comparison'
        cmsVersion = '1.0'
		myWindow=window.open('','','width=500,height=300')
		myWindow.document.write('<iframe src="https://apps.groupdocs.com/document-comparison/embed/' + id +'?&referer='+cmsName+'/'+cmsVersion+'" frameborder="0" width="100%" height="100%">If you can see this text, your browser does not support iframes. Please enable iframe support in your browser or use the latest version of any popular web browser such as Mozilla Firefox or Google Chrome. For more help, please check our documentation Wiki: http://groupdocs.com/docs/display/comparison/GroupDocs+Comparison+Integration+with+3rd+Party+Platforms</iframe>')
	}
-->
</script>
{/literal}