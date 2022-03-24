<?php

namespace Custom;

use PageController;
use SilverStripe\Control\HTTPRequest;

class ServicesPageController extends PageController
{
    private static $allowed_actions = [
        'show'
    ];

    public function show(HTTPRequest $request)
    {
        $service = Service::get()->byID($request->param('ID'));

        if(!$service) {
            return $this->httpError(404,'That Service could not be found');
        }

        return [
            'Service' => $service,
            'Title' => $service->Title,
        ];
    }

}
