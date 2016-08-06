<?php
	#echo 'Olá ' . $_GET['nome'] . '!</br>';
	#echo "Seu sexo é: ". $_GET["sexo"].'</br>';
	#echo "Você disse: ". $_GET['mensagem'].'</br></br>';

	#conexão com MySQL via PDO_MYSQL

	try{
		$usuario = "root";
		$senha = "lcm@icomp";
		$conn = new PDO("mysql:host=localhost;dbname=gomoku", $usuario, $senha);
		$conn->exec("set names utf8");

		print "Conexão efetuada com sucesso!" . "</br></br>";

		#Inserindo os dados
		$stmt = $conn->prepare('INSERT INTO comentario (nome, sexo, comentarios) VALUES (:nome, :sexo, :comentarios)');

		$nome = $_GET['nome'];
		$sexo = $_GET['sexo'];
		$comentarios = $_GET['comentarios'];
		$stmt->bindValue(':nome', $nome);
		$stmt->bindValue(':sexo', $sexo);
		$stmt->bindValue(':comentarios', $comentarios);
		$stmt->execute();

		#imprimindo os dados!
		echo $nome . "</br></br>";
		echo $sexo . "</br></br>";
		echo $comentarios . "</br></br>";

	}catch (PDOException $e){
		echo $e->getMessage();
	}
