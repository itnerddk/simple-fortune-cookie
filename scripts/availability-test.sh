set -euo pipefail
URL="${1:?usage: $0 <url>}"

curl -fsS --max-time 5 "$URL"

echo "Works: "$URL" is available"