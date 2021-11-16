#!/bin/sh

if [[ -z "$VERIFY_KEY" ]]; then
    echo 'Please specify verifyKey for Mirai API HTTP with "-e VERIFY_KEY=<YOUR_KEY>"!'
    exit 1
fi

echo "verifyKey: $VERIFY_KEY" >> /app/config/net.mamoe.mirai-api-http/setting.yml
exec "$@"
