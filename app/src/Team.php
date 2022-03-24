<?php

namespace Custom;

use SilverStripe\Forms\DateField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TabSet;
use SilverStripe\Versioned\Versioned;

class Team extends DataObject
{

    private static $db = [
        'Title' => 'Varchar',
        'Name' => 'Varchar',
        'Description' => 'Text',
        'FacebookLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'InstagramLink' => 'Varchar',
        'LinkinLink' => 'Varchar',
    ];


    private static $has_one = [
         'TeamPage' => TeamPage::class,
        'TeamPhoto' => Image::class,
    ];

    // private static $has_many = [
    //     'Articles' => ArticlePage::class,
    // ];

    private static $owns = [
        'TeamPhoto',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;
    public function getCMSfields()
    {
        $fields = FieldList::create(TabSet::create('Root'));


        $fields->addFieldsToTab('Root.Main', [
            TextField::create('Name'),
            TextField::create('Title'),
            TextareaField::create('Description'),

        ]);
        $fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
            'TeamPhoto',
            'Team photo'
        ));

        $upload->getValidator()->setAllowedExtensions(array(
            'png','jpeg','jpg','gif'
        ));
        $upload->setFolderName('team-photos');
        $fields->addFieldToTab('Root.Social',TextField::create('FacebookLink','Facebook'));
        $fields->addFieldToTab('Root.Social',TextField::create('TwitterLink','Twitter'));
        $fields->addFieldToTab('Root.Social',TextField::create('InstagramLink','Instagram'));
        $fields->addFieldToTab('Root.Social',TextField::create('LinkinLink','LinkedIn'));

        return $fields;
    }

    public function Link()
    {
        return 'nodata';
    }

}
