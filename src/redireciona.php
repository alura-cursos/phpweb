<?php

function redireciona($url):void
{
    header("location:$url");
    die;
}