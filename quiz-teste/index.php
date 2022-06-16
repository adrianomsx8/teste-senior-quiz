<?php
include_once 'conexao.php';
?>
<!DOCTYPE  html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Sistema de perguntas aleatórias</title>
</head>
<body>
<?php
//pesquisa pergunta randomica

$query_pergunta = "SELECT id, questao FROM perguntas ORDER BY random() LIMIT 1";

$result_pergunta = $conn->prepare($query_pergunta);
$result_pergunta->execute();

if(($result_pergunta) && $result_pergunta->rowCount() != 0 ){
   $row_pergunta = $result_pergunta->fetch(PDO::FETCH_ASSOC);
   extract($row_pergunta);
   echo $questao;

   $query_resposta = "SELECT id as id_resposta, resposta, valor_resposta FROM alternativas WHERE pergunta = $id ORDER By id ASC";
    $result_resposta = $conn->prepare($query_resposta);
    $result_resposta->execute();

    echo "<br>";

    while($row_resposta = $result_resposta->fetch(PDO::FETCH_ASSOC)){
        extract($row_resposta);
        echo $resposta  . ' - ';
        if($valor_resposta){
            echo "resposta correta";
        }else{
            echo "resposta incorreta";
        }

        echo "<br>";
    }
}else{
    echo 'pergunta não encontrada';
}
?>
</body>
</html>