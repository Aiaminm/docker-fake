qbittorrent-nox -d --webui-port=80

nohup cloudflared tunnel --url http://localhost:80 &
sleep 5

while [[ "${URL}" = "" ]]; do
    URL=$(grep -oP "https://.*trycloudflare.com" nohup.out)
    sleep 3
done

while [[ "${HTTP_CODE}" -ne 200 ]]; do
    HTTP_CODE=$(curl -I -s -w %{http_code} ${URL} -o /tmp/log1
    sleep 5
done

echo ${URL}${GLOBAL_PORTAL_PATH}
tail -f
