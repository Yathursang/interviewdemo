<?php

namespace Custom;

use SilverStripe\Admin\ModelAdmin;

class SponsorAdmin extends ModelAdmin
{

    private static $menu_title = 'Sponsores Details';

    private static $url_segment = 'sponser';

    private static $managed_models = [
        Sponsor::class,
    ];


    private static $menu_icon_class = 'font-icon-tree';
}
