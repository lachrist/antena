browserify client-browser.js > client-browser-bundle.js
rm /tmp/antena-test.sock
node server.js /tmp/antena-test.sock 8000 8080 &
sleep 1
node client-node.js /tmp/antena-test.sock
node client-node.js 8000
node client-node.js [::1]:8000
node client-node.js 127.0.0.1:8000
open http://localhost:8080/index.html
sleep 1
rm client-browser-bundle.js
wait $!