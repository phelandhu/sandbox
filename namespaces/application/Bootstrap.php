<?php
namespace Application;
class Bootstrap
{
    protected $_game;

	public function __construct(\Nick\PlayBowl $game)
    {
        $this->_game = $game;
        $this->_setupSomeUglyNamedNameSpace();
    }

    public function _setupSomeUglyNamedNameSpace()
    {
        \SomeUglyNamedNameSpace\Exception::setLogFile(namespace\PROJECT_PATH.'/logs/application.log');
    }

	public function run()
    {
        $this->_game->aim();
        $this->_game->roll();
        $this->_game->getHits();
    }
}