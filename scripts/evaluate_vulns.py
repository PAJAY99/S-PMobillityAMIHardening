import json

THRESHOLD_CRITICAL = 0
THRESHOLD_HIGH = 5

with open('scan_results.json') as f:
    data = f.readlines()

critical = [x for x in data if 'CRITICAL' in x]
high = [x for x in data if 'HIGH' in x]

if len(critical) <= THRESHOLD_CRITICAL and len(high) <= THRESHOLD_HIGH:
    print("✅ Hardened image passed security evaluation")
else:
    print("❌ Image failed: Too many high/critical vulnerabilities")
    exit(1)
