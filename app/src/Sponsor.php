<?php
namespace Custom;

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\Forms\TabSet;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Versioned\Versioned;

class Sponsor extends DataObject{
    private static $db = [
        'SponserName' => 'Varchar',
        'SponserFacebookLink' => 'Varchar',
        'SponserWebsiteLink' => 'Varchar',
        'SponserTelNumber' => 'Varchar',
        'SponserAddress' => 'Varchar',
        'TypeofSponser' => 'Varchar',
        'MoreData' => 'Text'

    ];

    private static $has_one = [
        'SponserLogo' => Image::class,
    ];
    private static $owns = [
        'SponserLogo',
    ];
    private static $extensions = [
        Versioned::class,
    ];
    private static $versioned_gridfield_extensions = true;
    private static $summary_fields = [
        'SponserName' => 'Sponser Name',
        'SponserTelNumber' => 'Phone Number',
        'SponserAddress' => 'Address'

    ];
    public function getCMSfields(){


        $fields = FieldList::create(TabSet::create('Root'));

        $fields->addFieldsToTab('Root.Main', [
            TextField::create('SponserName','Sponsers Name'),
            TextField::create('SponserFacebookLink','Face book link'),
            TextField::create('SponserWebsiteLink',' website link'),
            TextField::create('SponserTelNumber','Phone number'),
            TextField::create('SponserAddress', 'Address'),
            DropdownField::create('TypeofSponser', 'Type of sponer',array('goverment' => 'Goverment Sponsor', 'private' =>'Private Sponsor')),
            TextareaField::create('MoreData','More Data about the Sponsers'),
            $upload = UploadField::create('SponserLogo'),

        ]);
        $upload->getValidator()->setAllowedExtensions(array(
            'png','jpeg','jpg','gif'
        ));
        $upload->setFolderName('Sponsers-Logo');

        return $fields;
    }
}
