<?php

namespace Custom;

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use Silverstripe\SiteConfig\SiteConfig;

class SiteConfigExtension extends DataExtension
{
    private static $db =[
        'FacebookLink' => 'Varchar',
        'TwitterLink' => 'Varchar',
        'InstagramLink' => 'Varchar',
        'YouTubeLink' => 'Varchar',
        'LinkinLink' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',

        'FooterContent' => 'Text',
        'Address' => 'Text',
        'Copyright'=>'HTMLText'
    ];


    public function updateCMSFields(FieldList $fields)
    {

        $fields->addFieldToTab('Root.Social',TextField::create('FacebookLink','Facebook'));
        $fields->addFieldToTab('Root.Social',TextField::create('TwitterLink','Twitter'));
        $fields->addFieldToTab('Root.Social',TextField::create('InstagramLink','Instagram'));
        $fields->addFieldToTab('Root.Social',TextField::create('YouTubeLink','YouTube'));
        $fields->addFieldToTab('Root.Social',TextField::create('LinkinLink','LinkedIn'));
        $fields->addFieldToTab('Root.Social',TextField::create('PhoneNumber','Phone'));
        $fields->addFieldToTab('Root.Social',TextField::create('Email','Email'));

        $fields->addFieldsToTab('Root.Main', TextareaField::create('FooterContent', 'Content for footer'));
        $fields->addFieldsToTab('Root.Main', TextareaField::create('Address', 'Address for footer'));
        $fields->addFieldsToTab('Root.Main', new HTMLEditorField('Copyright', 'Copyright information'));

    }
}
