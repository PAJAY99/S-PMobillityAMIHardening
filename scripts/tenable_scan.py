import os
from tenable.io import TenableIO

TIO = TenableIO(os.getenv("TENABLE_ACCESS_KEY"), os.getenv("TENABLE_SECRET_KEY"))

scan = TIO.scans.create(name='AMI Security Scan', targets=['1.2.3.4'])
TIO.scans.launch(scan['id'])
TIO.scans.wait_until_complete(scan['id'])

vulns = TIO.vulns.list()
with open("scan_results.json", "w") as f:
    for v in vulns:
        f.write(f"{v}\n")
