<?php
namespace Custom;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use Page;
use PageController;

class ContactPage extends Page
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
class ContactPageController extends PageController
{
    private static $allowed_actions = ['Form'];
    public function Form()
    {
        $fields = new FieldList(
            new TextField('Name'),
            new EmailField('Email'),
            new TextareaField('Message')
        );
        $actions = new FieldList(
            new FormAction('submit', 'Submit')
        );

         return new Form($this, 'Form', $fields, $actions);

        $validator = new RequiredFields('Name', 'Message');
    return new Form($this, 'Form', $fields, $actions, $validator);

    }


    public function submit($data, $form) {
    //    $form->captureForm();

        $email = new Email();

        $email->setTo($this->Mailto);
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from {$data["Name"]}");

        $messageBody = "
            <p><strong>Name:</strong> {$data['Name']}</p>
            <p><strong>Message:</strong> {$data['Message']}</p>
        ";
        $email->setBody($messageBody);
        $email->send();
        $form->sessionMessage('Thank you for your Message','good');
        return $this->redirectBack();
        // return array(
        //     'Content' => '<p>Thank you for your feedback.</p>',
        //     'Form' => $this->SubmitText
        // );

    }

}
