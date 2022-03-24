<?php


namespace Custom;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\OptionsetField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\CheckboxSetField;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use PageController;

class TeamPageController extends PageController
{

    public function TeamDetails()
    {
        return Team::get()
        ->limit(20);

    }
    private static $allowed_actions = ['Form'];
    public function Form()
    {

        $fields = new FieldList(
            new TextField('FirstName','Name*'),
            new TextField('LastName','Father/Husband Name'),

            new EmailField('Email','Eamil*'),
            new TextField('Occupation','Occupation'),
            new TextField('Address','Address*'),
            new TextField('TelNo','Telephone Number'),
            new TextField('MobileNo','Mobilephone Number*'),
            new DateField('Dateofbirth','Date of birth'),
            new OptionsetField( $name = "Gender", $title = "Gender", $source = array( "1" => "Male", "2" => "Female", "3" => "Other"), $value = "1" ),
            new CheckboxSetField( $name = "Topics", $title = "Knowing Kuzhalosai by (please tick)", $source = array( "1" => "Family", "2" => "Friends", "3" => "Public", "4" => "Social Network" ), $value = "2" ),
            new CheckboxSetField( $name = "Services", $title = "Services want to Support (please tick)", $source = array( "1" => "Orphanage Service", "2" => "Awareness Crew", "3" => "Personality Development", "4" => "Knowledge Sharing", "5" => "Blood for Life", "6" => "Information Sharing", "6" => "Eco Kuzhalosai", "7" => "Single Parent Help", "8" => "General Counselling" , "9" => "Emergency Rescue","10" => "All the Above" ), $value = "10" ),

            new OptionsetField( $name = "Agreed", $title = "I understand the rules and regulations mentioned in the application and I agree that action can be taken against me by the Kuzhalosai foundation, if I am declared by the trust to be guilty of any type of misconduct mentioned herein.", $source = array( "1" => "Agreed terms and conditions*")),



        );
        $actions = new FieldList(
            new FormAction('submit', 'Submit')
        );

         return new Form($this, 'Form', $fields, $actions);

       $validator = new RequiredFields('FirstName', 'Email','Address','MobileNo','Agreed');
   return new Form($this, 'Form', $fields, $actions, $validator);

    }


    public function submit($data, $form) {

        $form->captureForm();
        $email = new Email();

        $email->setTo($this->Mailto);
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from {$data["FirstName"]}");

        $messageBody = "
            <p><strong>Name:</strong> {$data['FirstName']}</p>
            <p><strong>LastName:</strong> {$data['LastName']}</p>
            <p><strong>Email:</strong> {$data['Email']}</p>
            <p><strong>Occupation:</strong> {$data['Occupation']}</p>
            <p><strong>Address:</strong> {$data['Address']}</p>
            <p><strong>TelNo:</strong> {$data['TelNo']}</p>
            <p><strong>MobileNo:</strong> {$data['MobileNo']}</p>
            <p><strong>Dateofbirth:</strong> {$data['Dateofbirth']}</p>

        ";
        $email->setBody($messageBody);
        $email->send();
        $form->sessionMessage('Thank you for get interest to join in our team','good');
        return $this->redirectBack();
        // return array(
        //     'Content' => '<p>Thank you for your feedback.</p>',
        //     'Form' => $this->SubmitText
        // );

    }

}
