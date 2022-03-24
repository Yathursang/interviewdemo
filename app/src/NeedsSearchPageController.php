<?php
namespace Custom;
use PageController;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\ArrayLib;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\ArrayList;
use SilverStripe\View\ArrayData;
use SilverStripe\Control\HTTP;
use SilverStripe\Forms\DateField;
use SilverStripe\CMS\Model\SiteTree;
?>

<script>
    var input = document.getElementById('Form_ItemEditForm_Title');
      var options = {
        types: ['geocode'],
        componentRestrictions: {country: "in"}
      };
      var autocomplete = new google.maps.places.Autocomplete(input, options);
</script>

<?php
class NeedsSearchPageController extends PageController
{

    public function index(HTTPRequest $request)
    {
        $properties = Needs::get();
        $activeFilters = ArrayList::create();

        if ($search = $request->getVar('Keywords')) {
            $activeFilters->push(ArrayData::create([
                'Label' => "Keywords: '$search'",
                'RemoveLink' => HTTP::setGetVar('Keywords', null, null, '&'),
            ]));

            $properties = $properties->filter(array(
                'Title:PartialMatch' => $search
            ));
        }

        // if ($arrival = $request->getVar('ArrivalDate')) {
        //     $arrivalStamp = strtotime($arrival);
        //     $nightAdder = '+'.$request->getVar('Nights').' days';
        //     $startDate = date('Y-m-d', $arrivalStamp);
        //     $endDate = date('Y-m-d', strtotime($nightAdder, $arrivalStamp));
        //     $properties = $properties->filter([
        //         'AvailableStart:LessThanOrEqual' => $startDate,
        //         'AvailableEnd:GreaterThanOrEqual' => $endDate
        //     ]);

        // }

        // $filters = [
        //     ['Bedrooms', 'Bedrooms', 'GreaterThanOrEqual', '%s bedrooms'],
        //     ['Bathrooms', 'Bathrooms', 'GreaterThanOrEqual', '%s bathrooms'],
        //     ['MinPrice', 'PricePerNight', 'GreaterThanOrEqual', 'Min. $%s'],
        //     ['MaxPrice', 'PricePerNight', 'LessThanOrEqual', 'Max. $%s'],
        // ];

        // foreach($filters as $filterKeys) {
        //     list($getVar, $field, $filter, $labelTemplate) = $filterKeys;
        //     if ($value = $request->getVar($getVar)) {
        //         $activeFilters->push(ArrayData::create([
        //             'Label' => sprintf($labelTemplate, $value),
        //             'RemoveLink' => (HTTP::setGetVar($getVar, null, null, '&')),
        //         ]));

        //         $properties = $properties->filter([
        //             "{$field}:{$filter}" => $value
        //         ]);
        //     }
        // }

        $paginatedProperties = PaginatedList::create(
            $properties,
            $request
        )
            ->setPageLength(15)
            ->setPaginationGetVar('s');

        $data = [
            'Results' => $paginatedProperties,
            'ActiveFilters' => $activeFilters,
        ];

        if ($request->isAjax()) {
            return $this->customise($data)
                ->renderWith('Custom/Includes/NeedsSearchResults');
        }

        return $data;
    }

    public function NeedsSearchForm()
    {


        $form = Form::create(
            $this,
            'NeedsSearchForm',
            FieldList::create(
                TextField::create('Keywords')
                    ->setAttribute('placeholder', 'City, State, etc...')
                    ->addExtraClass('form-control field-size'),

            ),

            FieldList::create(
                FormAction::create('doSearch','Search')
                    ->addExtraClass('action btn btn-primary ')
            )

        );

        $form->setFormMethod('GET')
            ->setFormAction($this->Link())
            ->disableSecurityToken()
            ->loadDataFrom($this->request->getVars());

        return $form;
    }
}

