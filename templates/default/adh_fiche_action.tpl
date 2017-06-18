{if $login->isAdmin()}
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
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="javascript:getFFESSMId('{$member->login}')" id="btn_plugins_ffessmid_licence" title="Lancer une recherche de cette licence sur le site de la FFESSM." role="button" aria-disabled="false">Fiche FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
   {if $login->login == $member->login}
<li>
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="http://ffessm.fr/espacelicencie/identification.asp?idpseudo={$member->login}" id="btn_plugins_ffessmid_espace" title="Connexion à la page perso du site de la FFESSM." role="button" aria-disabled="false">Mon espace FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
   {/if}
{else}
<li>
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="http://ffessm.fr/espacelicencie/identification.asp?idpseudo={$member->login}" id="btn_plugins_ffessmid_espace" title="Connexion à la page perso du site de la FFESSM." role="button" aria-disabled="false">Mon espace FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
{/if}