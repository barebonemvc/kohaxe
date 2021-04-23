package php.native;

class PhpNative {
    @:extern @:native('var_dump')
    static public function var_dump(...value : Dynamic) : Void;

    @:extern @:native('print_r')
    static public function print_r(value : Dynamic, returnIt : Bool) : Dynamic;

    @:extern @:native('var_export')
    static public function var_export(value : Dynamic, returnIt : Bool) : Dynamic;
} 
