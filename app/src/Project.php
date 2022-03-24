<?php
namespace Custom;
use SilverStripe\Forms\DateField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;

use SilverStripe\Control\Controller;
use SilverStripe\Forms\TabSet;
use SilverStripe\Versioned\Versioned;

class Project extends DataObject{
    private static $db = [
        'ProjectName' => 'Varchar',
        'ProjectDiscription' => 'HTMLText'
    ];
    private static $has_one = [
        'ProjectImage' => Image::class,
    ];
    private static $owns = [
        'ProjectImage',
    ];
    private static $extensions = [
        Versioned::class,
    ];
    private static $versioned_gridfield_extensions = true;
    private static $summary_fields = [
        'ProjectName' => 'Project Name',
        'ProjectDiscription' => 'Project Discription',
    ];
    public function getCMSfields(){
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('ProjectName','Project Name'),
            HTMLEditorField::create('ProjectDiscription','Project Discription'),
            $upload = UploadField::create('ProjectImage'),
        ]);
        $upload->getValidator()->setAllowedExtensions(array(
            'png','jpeg','jpg','gif'
        ));
        $upload->setFolderName('project-Image');
        return $fields;
    }

}
