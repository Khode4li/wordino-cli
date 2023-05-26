URL="$1"
ESCAPED_URL=$(echo "$URL" | sed 's/[\/&]/\\&/g')

cat wordino | sed "s|HOST_URL|$ESCAPED_URL|g" > /usr/local/bin/wordino
chmod +x /usr/local/bin/wordino
echo "wordino CLI installed successfully!"
