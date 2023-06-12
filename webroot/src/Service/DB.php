<?php

namespace App\Service;

use PDO;

class DB {
    private static ?PDO $instance = null;

    public static function conn(): PDO {
        if (!static::$instance) {
            $db_name = getenv('DB_NAME');
            $db_user = getenv('DB_USER');
            $db_password = getenv('DB_PASSWORD');
            $db_port = getenv('DB_PORT');
            $db_host = getenv('DB_HOST');

            static::$instance = new PDO(
                "pgsql:host={$db_host};port={$db_port};dbname={$db_name}",
                $db_user,
                $db_password,
            );
            static::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        return static::$instance;
    }
}
