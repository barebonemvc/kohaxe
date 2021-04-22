package php.native;

class PhpNative {
    @:extern @:native('var_dump')
    static public function var_dump(value : Dynamic) : Void;
} 
