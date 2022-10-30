#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9b80cfb3-94d1-4e27-9ac9-240c602bbc52"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

