<?php
    $nome=$_POST['nome'];
    $endereco=$_POST['endereco'];
    $numero=$_POST['numero'];
    $bairro=$_POST['bairro'];
    $cidade=$_POST['cidade'];
    $uf_estado=$_POST['estado'];
    $cep=$_POST['cep'];
    $telefone=$_POST['telefone'];
    $celular=$_POST['celular'];
    $email=$_POST['email'];
    $data_nasc=$_POST['data_nasc'];
    $est_civil=$_POST['est_civ'];

    echo "Nome: ".$nome."\nEndereço: ".$endereco."\nNúmero: ".$numero."\nBairro: ".$bairro."\nCidade: ".$cidade."\nEstado: ".$uf_estado."\nCEP: "$cep."Telefone: ".$telefone."Celular".$celular."Email".$email."Data Nasc".$data_nasc."Estado civil".$est_civil
?>