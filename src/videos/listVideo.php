<?php

$pdo = Db::getPdo(Config::getConfig("postgres"));

if($data->category === "all"){
    $sql = 'SELECT *'
        . 'FROM videos t1 ';
}else{
    $sql = 'SELECT t1.*'
            . 'FROM videos t1 '
            . 'JOIN video_categories t2 ON t2.video_id = t1.id '
            . 'JOIN categories t3 ON t2.category_id = t3.id '
            . 'WHERE t3.name = :NAME';
}


$sth = $pdo->prepare($sql);
($data->category !== "all") ? $sth->bindParam(":NAME", $data->category, PDO::PARAM_STR):"";
$sth->execute();
$res = $sth->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($res);

