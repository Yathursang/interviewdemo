<?php

namespace Custom;

use SilverStripe\Forms\DateField;
use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\Forms\CheckboxField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\TabSet;
use SilverStripe\Versioned\Versioned;

class Needs extends DataObject
{

    private static $db = [
        'MainTitle' => 'Varchar',
        'Title' => 'Varchar',
        'PricePerNight' => 'Currency',
        // 'Bedrooms' => 'Int',
        // 'Bathrooms' => 'Int',
        'FeaturedOnHomepage' => 'Boolean',
        'Description' => 'Text',
        // 'AvailableStart' => 'Date',
        // 'AvailableEnd'=> 'Date',
        //   'lat' => 'Decimal',
        // 'lon' => 'Decimal',

    ];


    private static $has_one = [
        'Service' => Service::class,
        'PrimaryPhoto' => Image::class,
    ];

    private static $summary_fields = [
        'Title' => 'Title',
        'Service.Title' => 'Service',
        'FeaturedOnHomepage.Nice' => 'Featured?'
    ];

    private static $owns = [
        'PrimaryPhoto',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $versioned_gridfield_extensions = true;

    public function searchableFields()
    {
        return [
            'Title' => [
                'filter' => 'PartialMatchFilter',
                'title' => 'Title',
                'field' => TextField::class,
            ],
            'ServiceID' => [
                'filter' => 'ExactMatchFilter',
                'title' => 'Service',
                'field' => DropdownField::create('ServiceID')
                    ->setSource(
                        Service::get()->map('ID','Title')
                    )
                    ->setEmptyString('-- Any Service --')
            ],
            'FeaturedOnHomepage' => [
                'filter' => 'ExactMatchFilter',
                'title' => 'Only featured'
            ]
        ];
    }

    public function getCMSfields()
    {
        $fields = FieldList::create(TabSet::create('Root'));
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('MainTitle','Title'),
            TextareaField::create('Description'),
            CurrencyField::create('PricePerNight','How much need ?'),
                TextField::create('Title','Address'),
            DropdownField::create('ServiceID','Service Type')
                ->setSource(Service::get()->map('ID','Title')),
            CheckboxField::create('FeaturedOnHomepage','Finished ?'),
            // DateField::create('AvailableStart', 'Needs Start Date'),
            // DateField::create('AvailableEnd', 'Needs End Date'),


        ]);
        $fields->addFieldToTab('Root.Photos', $upload = UploadField::create(
            'PrimaryPhoto',
            'Primary photo'
        ));

        $upload->getValidator()->setAllowedExtensions(array(
            'png','jpeg','jpg','gif'
        ));
        $upload->setFolderName('needs-photos');

        return $fields;
    }
}
