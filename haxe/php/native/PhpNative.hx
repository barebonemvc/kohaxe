package php.native;

class PhpNative {
    @:extern @:native('var_dump')
    static public function(value : Dynamic) : Void;
} 
