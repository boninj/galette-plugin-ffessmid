{if $login->isAdmin()}
<script language="JavaScript" type="text/javascript">
{literal}
   function getFFESSMId (LicenceNb) {
   	  window.open("http://licences.ffessm.fr/licence_liste.asp?action=Ok&numeroadherent=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   }
   function FFESSM_Insc (LicenceNb, NomAdh, PrenomAdh, DateNaiss) {
   	  if ( LicenceNb.split("-")[0] == 'A' ) {
   	  window.open("https://licences.ffessm.fr/2018licence_creation2_information.asp?licence_numero=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   	  } else {
   	  window.open("https://licences.ffessm.fr/2018licence_creation2_information.asp?oblnom=" + NomAdh + "&oblprenom=" + PrenomAdh +
   	     "&journais=" + DateNaiss.split("-")[2] + "&moisnais=" + DateNaiss.split("-")[1] + "&oblanneenais=" + DateNaiss.split("-")[0] + 
   	     "&action2=VALIDER",
   	     '_blank');
   	  }
   }
   function FFESSM_MonEsp (LicenceFFESSM) {
   	  window.open("http://ffessm.fr/espacelicencie/identification.asp?idpseudo={LicenceFFESSM}",
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
<li>
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="javascript:FFESSM_Insc('{$member->login}','{$member->_name}','{$member->_surname}','{$member->_birthdate}')" id="btn_plugins_ffessmid_inscript" title="Inscrire cet adhérent du site de la FFESSM (2018)." role="button" aria-disabled="false">Inscription 2018<!-- {_T string="Inscription FFESSM"} --></a>
</li>
{else}
<li>
   <a class="button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" href="http://ffessm.fr/espacelicencie/identification.asp?idpseudo={$member->login}" id="btn_plugins_ffessmid_espace" title="Connexion à la page perso du site de la FFESSM." role="button" aria-disabled="false">Mon espace FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
{/if}