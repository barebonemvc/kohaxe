# kohaxe

![Kohaxe logo](https://raw.githubusercontent.com/barebonemvc/kohaxe/master/kohaxe.svg)

**Ko**hana the Swift PHP framework in **Haxe**

A project born from 
* the practical need to use a compiler to check our web services code 
* inability to run the hack compiler (hhvm) on windows platforms

This project is not using composer and it is not automatically downloading packages that you don't use.

You can use kohaxe when

- you need a type safety layer on top of the PHP & Kohana runtime
- you want typing for dynamic JSON messages received 

## Installation

Add the following code in `public/index.php`, immediately after the boostrap line.

```php
set_include_path(get_include_path().PATH_SEPARATOR.APPPATH.'/lib');
spl_autoload_register(
    function($class){
        $file = stream_resolve_include_path(str_replace('\\', '/', $class) .'.php');
        if ($file) {
            include_once $file;
        }
    }
);
\php\Boot::__hx__init();
```

Then for each controller you need to forward the includes in the following way

For instance in `application/classes/Controller/Welcome.php` put the following contents

```php
require_once APPPATH . '/lib/Controller_Welcome.php';
```

