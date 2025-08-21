const http = require("http");

// HOSTNAME lo setea Kubernetes/OpenShift con el nombre del pod
const podName = process.env.HOSTNAME || "desconocido";

const server = http.createServer((req, res) => {
  const message = `Hola desde el pod ${podName}`;
  //console.log(message);   // 👈 se ve en logs
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end(message + "\n");
});

const PORT = process.env.PORT || 8080;
server.listen(PORT, () => {
  console.log(`Servidor escuchando en puerto ${PORT}, Hola! desde pod: ${podName}`);
});

