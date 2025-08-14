set -euo pipefail
PORT=$(kubectl --kubeconfig kubeconfig describe service frontend | grep -i nodeport | awk '{print $3}' | cut -d'/' -f1 | tr -d '[:space:]')
URL='http://13.62.20.151:'

URL_COMB=$URL$PORT

curl -fsS --max-time 5 "$URL_COMB" >/dev/null

echo "Works: "$URL_COMB" is available"