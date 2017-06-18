<script language="JavaScript" type="text/javascript">
{literal}
   function getFFESSMId (LicenceNb) {
   	  window.open("http://licences.ffessm.fr/licence_liste.asp?action=Ok&numeroadherent=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   }
{/literal}
</script>
<li>
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="javascript:getFFESSMId('{$member->login}')" id="btn_plugins_ffessmid" title="Lancer une recherche de cette licence sur le site de la FFESSM." role="button" aria-disabled="false">Fiche FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>