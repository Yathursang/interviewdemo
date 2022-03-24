<?php


namespace Custom;

use PageController;

class HomePageController extends PageController
{
    public function ProjectDetails()
    {
        return Project::get()
            ->limit(3);
    }
    public function TeamDetails()
    {
        return Team::get()
            ->limit(4);
    }
    public function SponsoresDetails()
    {
        return Sponsor::get();
    }
    public function Ourservices()
    {
        return ServicesPage::get();
    }

}
