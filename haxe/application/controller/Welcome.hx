
package controller;

import kohana.Controller;
import kohana.Request;
import kohana.Response;

@:native('Controller_Welcome')
class Welcome extends Controller {
    public function new(request : Request, response : Response) {
        super(request, response);
    }

    public function action_index() {
        untyped __php__('var_dump(__METHOD__)');
    }
}
