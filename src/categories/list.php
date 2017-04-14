<?php
$pdo = Db::getPdo(Config::getConfig("postgres"));

$sql = 'SELECT t1.id, t1.name as "ln", t1.name as "desc", true as "show" '
        . 'FROM categories t1 ';
$sth = $pdo->prepare($sql);
$sth->execute();
$res = $sth->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($res);


