{if $login->isAdmin() or $login->isStaff() or $login->isGroupManager()}
<script language="JavaScript" type="text/javascript">
{literal}
   function getFFESSMId (LicenceNb) {
   	  window.open("http://licences.ffessm.fr/licence_liste.asp?action=Ok&numeroadherent=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   }
{/literal}
</script>
<a href="javascript:getFFESSMId('{$member->login}')">
   <img
      src="{path_for name="plugin_res" data=["plugin" => $module_id, "path" => "images/ffessm-icon.png"]}"
      alt="Licence FFESSM"
      title="{$member->sname}&nbsp;: Fiche licencié sur FFESSM.fr"
      width="16" height="16"/>
</a>
{/if}