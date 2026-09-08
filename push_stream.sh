curl -fsSL https://extras.getpagespeed.com/deb/gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/getpagespeed.gpg
echo "deb [signed-by=/usr/share/keyrings/getpagespeed.gpg] https://extras.getpagespeed.com/debian trixie main" | sudo tee /etc/apt/sources.list.d/getpagespeed.list
sudo apt update
sudo apt install -y nginx nginx-module-push-stream
nginx -V 2>&1 | grep -i push
ls -l /usr/lib/nginx/modules/ngx_http_push_stream_module.so
