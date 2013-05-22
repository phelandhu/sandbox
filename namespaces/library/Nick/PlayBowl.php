<?php
namespace Nick;
use \SomeUglyNamedNameSpace as Lib;
class PlayBowl
{
    public function aim()
    {
        echo 'you are aiming at the pins<br />';
    }

    public function roll()
    {
        echo 'you release the ball and wait in anticipation<br />';
    }

    public function getHits()
    {
        $this->_hit();
        $this->_hit2();

        $this->_getPinsHit();
        $this->_getPinsHit2();
        $this->_getPinsHit3();
        $this->_getPinsUnexisting();
    }

    // call is identical to hit2
    // this function doesn't use the namespace operator
    // because by default it will prepend with the current namespace
    protected function _hit()
    {
        $calculator = new Calculator();
        if ($calculator->isGood()) {
            echo 'you hit all pins<br />';
        }
    }


    // call is identical to hit
    // this function does use the namespace operator
    // we manually prepend the current namespace
    // It is the namespace equivalent of the self operator for classes
    protected function _hit2()
    {
        $calculator = new namespace\Calculator();
        if ($calculator->isGood()) {
            echo 'you hit all pins<br />';
        }
    }

    // here we use the fully qualified third party namespace
    protected function _getPinsHit()
    {
        $someCalculator = \SomeUglyNamedNameSpace\Calculator::factory(\SomeUglyNamedNameSpace\Calculator::SCIENTIFIC);
        $num = $someCalculator->add(2, rand(2,4));
        echo sprintf('%d pins hit', $num),'<br />';
    }

    // same as here _getPinsHit but we use the aliased namespace defined at the top of the file
    protected function _getPinsHit2()
    {
        $someCalculator = Lib\Calculator::factory(Lib\Calculator::SCIENTIFIC);
        $num = $someCalculator->add(2, rand(2,4));
        echo sprintf('%d pins hit', $num),'<br />';
    }

    // example to show that we can also use the alias as the base for nested namespaces.
    // note you cannot really by definition nest namespaces but appending the names is as good as it gets
    protected function _getPinsHit3()
    {
        $someCalculator = new Lib\Math\Addition\Scientific();
        $num = $someCalculator->add(2, rand(2,4));
        echo sprintf('%d pins hit', $num), '<br />';
    }

    // example to show the exception handling which will show communication with global scope
    protected function _getPinsUnexisting()
    {
        try {
        	$someCalculator = Lib\Calculator::factory('science');
        } catch (Lib\Exception $e) {
            $e->log();
        }

    }
}