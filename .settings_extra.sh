<?php

return [
    'http_client_options' => [
        'value' => [
            'proxyHost' => 'http://ipc-kwts-01.ipc-oil.ru',
            'proxyPort' => 31283,

            // если нужна авторизация на proxy
            // 'proxyUser' => 'bitrix',
            // 'proxyPassword' => 'secret',

            // лучше включить curl-режим, у него богаче поддержка proxy
            'useCurl' => true,

            'socketTimeout' => 30,
            'streamTimeout' => 60,
        ],
        'readonly' => true,
    ],
];
