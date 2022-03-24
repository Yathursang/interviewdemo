<?php
namespace Custom;
use Page;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
class HomePage extends Page
{

	private static $db = [

		'HeroTitle' => 'Varchar',
        'HeroSubTitle' => 'Text',
        'DonateDiscription' => 'Text',


	];
    private static $has_one = [
        'Photo' => Image::class,

    ];
    public function getCMSFields()
	{
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Main', TextField::create('HeroTitle','Title of Hero Section'),'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('HeroSubTitle')
        ->setDescription('This is the subtitle of hero section.'),
        'Content');
        $fields->addFieldToTab('Root.Main', TextareaField::create('DonateDiscription')
        ->setDescription('This is the Donation - discription.'),
        'Content');
        $fields->addFieldToTab(
			'Root.Attachments',
			$photo = UploadField::create('Photo')
		);
		$photo->setFolderName('Hero-photos');

	 	return $fields;
	}
}
