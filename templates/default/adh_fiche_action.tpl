<script language="JavaScript" type="text/javascript">
{literal}
   // Supprimer les accents
   function no_accent (DansLaChaine) {
   	  return DansLaChaine.replace(/[èéêë]/g, "e").replace(/[ç]/g, "c").replace(/[àâä]/g, "a").replace(/[ïî]/g, "i").replace(/[ûùü]/g, "u").replace(/[ôöó]/g, "o");
   }
   // Recherche par numéro de licence
   function getFFESSMId (LicenceNb) {
   	  window.open("http://licences.ffessm.fr/licence_liste.asp?action=Ok&numeroadherent=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   }
   // Recherche par Nom et Prénom
   function getFFESSM_Rech (NomAdh, PrenomAdh) {
   	  window.open("https://licences.ffessm.fr/licence_liste.asp?date1=&date2=&membre=&numeroadherent=&nomadherent=" + no_accent(NomAdh) +
   	     "&prenomadherent=" + no_accent(PrenomAdh) + "&datenais=&datevalidite=&assurance=&action=Ok",
   	     '_blank');
   }
   // Enregistrer une inscription 
   function FFESSM_Insc_2018 (LicenceNb, NomAdh, PrenomAdh, DateNaiss) {
   	  if ( LicenceNb.split("-")[0] == 'A' ) {
   	  window.open("https://licences.ffessm.fr/2018licence_creation2_information.asp?licence_numero=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   	  } else {
   	  window.open("https://licences.ffessm.fr/2018licence_creation2_information.asp?oblnom=" + no_accent(NomAdh) + "&oblprenom=" + no_accent(PrenomAdh) +
   	     "&journais=" + DateNaiss.split("-")[2] + "&moisnais=" + DateNaiss.split("-")[1] + "&oblanneenais=" + DateNaiss.split("-")[0] + 
   	     "&action2=VALIDER",
   	     '_blank');
   	  }
   }
   // Enregistrer une inscription 2019
   function FFESSM_Insc_2019 (LicenceNb, NomAdh, PrenomAdh, DateNaiss) {
   	  window.alert("Fonction pas encore disponible...");
/*
   	  if ( LicenceNb.split("-")[0] == 'A' ) {
   	  window.open("https://licences.ffessm.fr/2019licence_creation2_information.asp?licence_numero=" +
   	     LicenceNb.split("-")[2],
   	     '_blank');
   	  } else {
   	  window.open("https://licences.ffessm.fr/2019licence_creation2_information.asp?oblnom=" + no_accent(NomAdh) + "&oblprenom=" + no_accent(PrenomAdh) +
   	     "&journais=" + DateNaiss.split("-")[2] + "&moisnais=" + DateNaiss.split("-")[1] + "&oblanneenais=" + DateNaiss.split("-")[0] + 
   	     "&action2=VALIDER",
   	     '_blank');
   	  }
*/
   }
   // Accès à mon espace perso
   function FFESSM_MonEsp (LicenceFFESSM) {
   	  window.open("http://ffessm.fr/espacelicencie/identification.asp?idpseudo=" + LicenceFFESSM,
   	     '_blank');
   }
{/literal}
</script>

{if $login->login == $member->login}
<li>
   <a class="button" href="javascript:FFESSM_MonEsp('{$member->login}')" id="btn_plugins_ffessmid_espace" title="Connexion à la page perso du site de la FFESSM.">Mon espace FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
{/if}
{if $login->isAdmin() or $login->isStaff() or $login->isGroupManager()}
<li>
   <a class="button" href="javascript:getFFESSMId('{$member->login}')" id="btn_plugins_ffessmid_licence" title="Lancer une recherche de cette licence sur le site de la FFESSM.">Fiche FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
<li>
   <a class="button" href="javascript:getFFESSM_Rech('{$member->_name}','{$member->_surname}')" id="btn_plugins_ffessmid_licence" title="Lancer une recherche de cet adhérent(e) sur le site de la FFESSM.">Recherche FFESSM<!-- {_T string="Fiche FFESSM"} --></a>
</li>
{/if}
{if $login->isAdmin() or $login->isStaff()}
<li>
   <a class="button" href="javascript:FFESSM_Insc_2018('{$member->login}','{$member->_name}','{$member->_surname}','{$member->_birthdate}')" id="btn_plugins_ffessmid_inscript" title="Inscrire cet adhérent via le site de la FFESSM (2018).">Inscription 2018<!-- {_T string="Inscription FFESSM 2018"} --></a>
</li>
<li>
   <a class="button" href="javascript:FFESSM_Insc_2019('{$member->login}','{$member->_name}','{$member->_surname}','{$member->_birthdate}')" id="btn_plugins_ffessmid_inscript" title="Inscrire cet adhérent via le site de la FFESSM (2018).">Inscription 2019<!-- {_T string="Inscription FFESSM 2019"} --></a>
</li>

{/if}