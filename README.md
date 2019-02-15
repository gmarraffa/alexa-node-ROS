# Ogni volta che si apre la console
```bash
source /opt/ros/kinetic/setup.bash
```
# Lanciare il ros server
```bash
roslaunch rosbridge_server rosbridge_websocket.launch
```
# Lanciare il ros server in background
```bash
roslaunch rosbridge_server rosbridge_websocket.launch > /dev/null &
```
Per poi spegnerlo annotarsi il numero che viene stampato dopo il comando precedente e fare:
```bash
kill -SIGTERM <NUMERO>
```
# Lanciare il simulatore di alexa
Solo dopo aver avviato il server ros
```bash
cd examples && sudo node server.js
```
Andare su http://localhost:8081/alexa/<nome_app> e simulare le chiamate.

# Controllare che i messaggi vengano recepiti da ros
```bash
rostopic echo <NOME_MESSAGGIO>
```
Lasciare attivo questo comando e controllare se i messaggi vengono recepiti.