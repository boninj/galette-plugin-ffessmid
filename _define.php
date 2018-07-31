<?php
$this->register(
    'Galette FFESSM Id',         //Name
    'Accès à une fiche FFESSM',  //Short description
    'Jérôme BONIN',              //Author
    '0.0.5',                     //Version
    '0.9',                       //Galette version compatibility
    'ffessmid',                  //routing name and translation domain
    '2018-07-30',                //Release date
    [                            //Permissions needed - not yet implemented
        'ffessmid_main' => 'staff'
    ]
);
?>