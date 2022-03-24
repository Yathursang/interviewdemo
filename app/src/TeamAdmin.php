<?php

namespace Custom;

use SilverStripe\Admin\ModelAdmin;

class TeamAdmin extends ModelAdmin
{

    private static $menu_title = 'Team / Volunteer';

    private static $url_segment = 'teams';

    private static $managed_models = [
        Team::class,
    ];


    private static $menu_icon_class = 'font-icon-menu-security';
}
