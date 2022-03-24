<?php
namespace Custom;
use PageController;
class PostController extends PageController
{
    private static $allowed_actions = ['index', 'view', 'tag'];

private static $url_handlers = [
	'' => 'index',
	'tag//$Permalink' => 'ViewTag',
	'view//$Permalink' => 'ViewPost'
];
public function ViewTag(HTTPRequest $request){}

public function ViewPost(HTTPRequest $request){}
}
