<?php
namespace Custom;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

use Page;

class TeamPage extends Page
{
    private static $db = array(
		'Mailto' => 'Varchar(100)', //Email address to send submissions to
		'SubmitText' => 'HTMLText' //Text presented after submitting message
	);

	//CMS fields
	function getCMSFields()
	{
		$fields = parent::getCMSFields();

		$fields->addFieldToTab("Root.Content.OnSubmission", new TextField('Mailto', 'Email submissions to'));
		$fields->addFieldToTab("Root.Content.OnSubmission", new HTMLEditorField('SubmitText', 'Text on Submission'));

		return $fields;
	}
}
