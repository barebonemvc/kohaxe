
package controller;

import kohana.Controller;

class Welcome extends Controller {
    public function new(request : Dynamic, response : Dynamic) {
        super(request, response);
    }

    public function action_index() {
        untyped __php__('var_dump(__METHOD__)');
    }
}
