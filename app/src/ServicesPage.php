<?php

namespace Custom;

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use Page;

class ServicesPage extends Page
{
    private static $db = [
        'HeadLine' => 'Varchar',
        'SubText' => 'Text',
    ];

    private static $has_many = [
        'Services' => Service::class,
    ];

    private static $owns = [
        'Services',
    ];

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldsToTab('Root.Main', [
            TextField::create('HeadLine'),
            TextareaField::create('SubText'),

        ]);

        $fields->addFieldToTab('Root.Services', GridField::create(
            'Services',
            'Services on this page',
            $this->Services(),
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;
    }

}
