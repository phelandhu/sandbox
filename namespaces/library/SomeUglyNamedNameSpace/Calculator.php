<?php
namespace SomeUglyNamedNameSpace;
use SomeUglyNamedNameSpace\Math\Addition;
class Calculator
{
    const SCIENTIFIC = 'scientific';

	static public function factory($type = 'scientific')
    {
        if (self::SCIENTIFIC === $type) {
    	   return new Addition\Scientific();
        }
        throw new Exception('you must specify a valid Calculator type');
    }
}