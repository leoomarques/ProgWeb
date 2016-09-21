<?php

namespace Equipamento;

class Equipamento{
	public $ligado;
	
	function __liga($ligado){
		$this->ligado = true;
	}

	function __desliga($ligado){
		$this->ligado = false;
	}
}