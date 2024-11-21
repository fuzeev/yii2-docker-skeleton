<?php

return [
    'class' => 'yii\db\Connection',
    'charset' => 'utf8',
    'enableSchemaCache' => true,
    'dsn' => getenv('PG_DSN')??'pgsql:host=localhost;dbname=skeleton',
    'username' => getenv('PG_USER')??'skeleton',
    'password' => getenv('PG_PASSWORD')??'123456',
];
