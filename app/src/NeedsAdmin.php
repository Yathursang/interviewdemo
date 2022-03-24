<?php

namespace Custom;

use SilverStripe\Admin\ModelAdmin;

class NeedsAdmin extends ModelAdmin
{

    private static $menu_title = 'Urgent Needs ';

    private static $url_segment = 'urgent-needs1';

    private static $managed_models = [
        Needs::class,
    ];


    private static $menu_icon_class = 'font-icon-home';
}
