<?php
namespace SomeUglyNamedNameSpace;
class Exception extends \Exception
{
    static protected $_logFile;

    public function log()
    {
       file_put_contents(self::$_logFile, 'this will call the namespaced function');
       \file_put_contents(self::$_logFile, date('H:i:s')."\t".'this will call the global function, which we all know');
    }

    static public function setLogFile($path)
    {
        self::$_logFile = $path;
    }
}

function file_put_contents($filename, $string) {
    echo 'this is '.__NAMESPACE__.' function';
}