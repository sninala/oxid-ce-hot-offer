[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE_1"|oxmultilangassign}]

[{ if $readonly }]
    [{assign var="readonly" value="readonly disabled"}]
[{else}]
    [{assign var="readonly" value=""}]
[{/if}]

<form name="transfer" id="transfer" action="[{ $oViewConf->getSelfLink() }]" method="post">
    [{ $oViewConf->getHiddenSid() }]
    <input type="hidden" name="oxid" value="1">
    <input type="hidden" name="cl" value="">
</form>


        <table cellspacing="0" cellpadding="0" border="0">
        <form name="myedit" id="myedit" action="[{ $oViewConf->getSelfLink() }]" method="post">
        [{ $oViewConf->getHiddenSid() }]
        <input type="hidden" name="cl" value="dyn_superclix">
        <input type="hidden" name="fnc" value="">
        <input type="hidden" name="oxid" value="[{$oViewConf->getActiveShopId()}]">
        <tr>
            <td class="edittext" >
            [{ oxmultilang ident="DYN_SUPERCLIX_SUPERCLICKSID" }]&nbsp;&nbsp;
            </td>
            <td class="edittext">
             <input type="text" class="editinput" size="35" maxlength="[{$edit->oxshops__oxsuperclicksid->fldmax_length}]" name="editval[oxshops__oxsuperclicksid]" value="[{$edit->oxshops__oxsuperclicksid->value}]" [{ $readonly }]>
            </td>
        </tr>
        <tr>
            <td class="edittext">
            </td>
            <td class="edittext"><br>
            <input type="submit" class="edittext" name="save" value="[{ oxmultilang ident="GENERAL_SAVE" }]" onClick="Javascript:document.myedit.fnc.value='save'"" [{ $readonly }]>
            </td>
        </tr>
        </form>
        </table>

[{include file="bottomnaviitem.tpl" }]
[{include file="bottomitem.tpl"}]
