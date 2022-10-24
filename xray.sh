#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d734fe57-1f45-4fa5-a777-b8dc1fd88bd8"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

