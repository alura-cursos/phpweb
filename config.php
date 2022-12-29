<?php


$mysql = new mysqli('localhost:3306', 'root', 'r2147258369','blog');
$mysql->set_charset('utf8');

if ($mysql == false){

    echo "Erro de conexão";
}