$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://artifacts.elastic.co/downloads/beats/elastic-agent/elastic-agent-8.18.0-windows-x86_64.zip -OutFile elastic-agent-8.18.0-windows-x86_64.zip
Expand-Archive .\elastic-agent-8.18.0-windows-x86_64.zip
cd elastic-agent-8.18.0-windows-x86_64
.\elastic-agent.exe install `
  --fleet-server-es=https://192.168.80.158:9200 `
  --fleet-server-service-token=AAEAAWVsYXN0aWMvZmxlZXQtc2VydmVyL3Rva2VuLTE3NDU5MDQ4NDc0ODc6MEo0Q1hoOGFUUGVvZG5xNXFwWlJJUQ `
  --fleet-server-policy=fleet-server-policy `
  --fleet-server-es-ca-trusted-fingerprint=22fe3b8ea241d234593ba8d6ae54e9d36ff1997448d9f3a34bd7f454b0d22b27 `
  --fleet-server-port=8220
