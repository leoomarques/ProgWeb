<?php

namespace Equipamento\Sonoro;

/**
* 
*/
class EquipamentoSonoro extends \Equipamento\Equipamento{
	public $volume;
	public $stereo;


	function __mono($stereo){
		$this->stereo = false;
	}

	function __stereo($stereo){
		$this->stereo = true;
	}

	function __liga(){
		parent::liga();	
		$this->volume = 5; 
	}

	function setVolume($volume){
		$this->volume = new volume();
	}
}