<?php

namespace Custom;

use SilverStripe\Admin\ModelAdmin;

class ProjectAdmin extends ModelAdmin
{

    private static $menu_title = 'Project Details';

    private static $url_segment = 'projects';

    private static $managed_models = [
        Project::class,
    ];


    private static $menu_icon_class = 'font-icon-picture';
}
