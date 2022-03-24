<?php

namespace {

use SilverStripe\View\Requirements;
    use SilverStripe\CMS\Controllers\ContentController;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();

            // You can include any CSS or JS required by your project here.
            Requirements::themedCSS('css/style.css');
            Requirements::themedCSS('vendor/aos/aos');
            Requirements::themedCSS('vendor/bootstrap/css/bootstrap.min');
            Requirements::themedCSS('vendor/bootstrap-icons/bootstrap-icons');
            Requirements::themedCSS('vendor/glightbox/css/glightbox.min');
            Requirements::themedCSS('vendor/remixicon/remixicon');
            Requirements::themedCSS('vendor/swiper/swiper-bundle.min');
            // Requirements::themedCSS('reset');
            Requirements::themedCSS('typography');
            // Requirements::themedCSS('form');
             Requirements::themedCSS('map');
            // Requirements::themedCSS('layout');




            Requirements::themedJavascript('vendor/purecounter/purecounter');
             Requirements::themedJavascript('vendor/aos/aos');
             Requirements::themedJavascript('vendor/bootstrap/js/bootstrap.bundle.min');
             Requirements::themedJavascript('vendor/glightbox/js/glightbox.min');
             Requirements::themedJavascript('vendor/isotope-layout/isotope.pkgd.min');
             Requirements::themedJavascript('vendor/swiper/swiper-bundle.min');
             Requirements::themedJavascript('vendor/php-email-form/validate');


             Requirements::themedJavascript('javascript/main');
             //Requirements::themedJavascript('javascript/map');
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }
    }
}
