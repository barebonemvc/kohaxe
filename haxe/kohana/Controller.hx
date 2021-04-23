
package kohana;

@:native('Kohana_Controller')
extern class Controller {
    var request : Request;
    public function new(request : Request, response : Response);
}
