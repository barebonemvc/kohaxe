package php.native;

import haxe.extern.EitherType;

abstract PhpNative(Dynamic) {
    @:extern
    private function new();

    /**
     * Call a callback with an array of parameters
     *
     * Calls the callback given by the first parameter with the parameters in args.
     *
     * @param  callback :             php.NativeString [description]
     * @param  args     :             php.NativeArray  [description]
     * @return          [description]
     */
    static public function call_user_func_array(callback : php.NativeString,
        args : php.NativeArray) : Dynamic
    {
        return php.Syntax.code('call_user_func_array({0}, {1})', callback, args);
    }

    /**
     * Dumps information about a variable
     *
     * var_dump ( mixed $value , mixed ...$values ) : void
     *
     */
    @:overload(function(v1 : Dynamic) : Void {})
    @:overload(function(v1 : Dynamic, v2 : Dynamic) : Void {})
    @:overload(function(v1 : Dynamic, v2 : Dynamic, v3 : Dynamic) : Void {})
    @:overload(function(v1 : Dynamic, v2 : Dynamic, v3 : Dynamic, v4 : Dynamic) : Void {})
    @:overload(function(v1 : Dynamic, v2 : Dynamic, v3 : Dynamic, v4 : Dynamic, v5 : Dynamic) : Void {})
    @:overload(function(v1 : Dynamic, v2 : Dynamic, v3 : Dynamic, v4 : Dynamic,
        v5 : Dynamic, v6 : Dynamic) : Void {})
    static public function var_dump() : Void {
        call_user_func_array('var_dump', php.Syntax.code('func_get_args()'));
    }

    /**
     * Prints human-readable information about a variable
     *
     * print_r ( mixed $value , bool $return = false ) : string|bool
     *
     * print_r() displays information about a variable in a way that's readable
     * by humans.
     *
     * print_r(), var_dump() and var_export() will also show protected and private
     * properties of objects. Static class members will not be shown.
     */
    @:overload(function(value : Dynamic) : EitherType<php.NativeString, Bool> {})
    @:overload(function(value : Dynamic, returnIt : Bool) : EitherType<php.NativeString, Bool> {})
    static public function print_r() : EitherType<php.NativeString, Bool> {
        return call_user_func_array('print_r', php.Syntax.code('func_get_args()'));
    }

    /**
     * Outputs or returns a parsable string representation of a variable
     *
     * var_export ( mixed $value , bool $return = false ) : string|null
     *
     * var_export() gets structured information about the given variable.
     * It is similar to var_dump() with one exception: the returned
     * representation is valid PHP code.
     *
     */
    @:overload(function(value : Dynamic) : Null<NativeString> {})
    @:overload(function(value : Dynamic, returnIt : Bool) : Null<NativeString> {})
    static public function var_export() : Null<NativeString> {
        return call_user_func_array('var_export', php.Syntax.code('func_get_args()'));
    }
}
