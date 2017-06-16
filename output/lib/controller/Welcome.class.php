<?php

class controller_Welcome extends Controller {
	public function __construct($request, $response) { if(!php_Boot::$skip_constructor) {
		parent::__construct($request, $response);
	}}
	public function action_index() {
		var_dump(__METHOD__);
	}
	function __toString() { return 'controller.Welcome'; }
}
