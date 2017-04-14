<?php

class Config{
    
    private static $_config = array(
        "postgres"=>array(
            "type"=>"pgsql",
            "dbname"=>"video",
            "host"=>"localhost",
            "dbuser"=>"postgres",
            "password"=>""
        ),
    );

    public static function getConfig($param) {
        return Config::$_config[$param];
    }
}

