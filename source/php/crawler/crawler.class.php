<?php
// crawler.class.php
/***********************************************
* Created:            Apr 16, 2013 2:12:39 PM
* Last Modified:      Apr 16, 2013 2:12:39 PM
*
* [LEFT BLANK FOR PROGRAM DISCRIPTION]
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/

class Crawler {
	protected $markup = "";

	public function __construct($uri) {
		$this->markup = $this->getMarkup($uri);
	}
	
	public function getMarkup($uri) {
		return file_get_contents($uri);
	}
	
	public function get($type) {
		$method = "_get_{$type}";
		if(method_exists($this, $method)) {
			return call_user_func(array($this, $method));
		}
	}
	
	protected function _get_images() {
		if(!empty($this->markup)) {
			preg_match_all('/<img([^>]+)\/>/i', $this->markup, $images);
			return !empty($images[1]) ? $images[1] : FALSE;
		}
	}
	
	protected function _get_links() {
		if(!empty($this->markup)) {
			preg_match_all('/<a([^>]+)\>(.*?)\<\/a\>/i',$this->markup, $links);
			return !empty($links[1]) ? $links[1] : FALSE;
		}
	}
	
	public function showMarkup() {
		return $this->markup;
	}
}
