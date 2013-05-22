<?php
// settings.class.php
/***********************************************
* Created:            Apr 16, 2013 12:07:22 PM
* Last Modified:      Apr 16, 2013 12:07:22 PM
*
* Experimentation to see about changing the list of constants to database entries.
*
* Mike Browne - mbrowne@cantorgaming.com
***********************************************/
class settings {
	protected $entity;
	protected $dbconn;
	public $data = array();
	
	public function __construct($dbconn) {
		$this->entity = "siteSettings";
		$this->dbconn = $dbconn;
		$this->getSettings();
	}
	
	private function getSettings() {
		$query = sprintf("SELECT * FROM %s", $this->entity);
		$result = $this->dbconn->query($query);
		
		for ($row_no = 0; $row_no <= $result->num_rows -1; $row_no++) {
			$row = $result->fetch_assoc();
			$this->data[$row['key']] = $row['value'];
		}
	}
	
	public function getSetting($setting) {
		return $this->data[$setting];
	}
	
	public function listSettingsNames() {
		$result = null;
		$result = array_keys($this->data);
		return $result;
	}
	
	public function listSettings() {
		$result = null;
		$result = $this->data;
		return $result;
	}
}