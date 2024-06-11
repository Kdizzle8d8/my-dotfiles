from typing import List


class Connection:
    def __init__(self, name: str, local: str, tail: str):
        self.name = name
        self.local = local
        self.tail = tail


# Creating a list of connection instances
connections: List[Connection] = [
    Connection(name="ubuntu-server", local="192.168.1.193", tail="100.100.141.53")
]

# To verify, let's print the details of the connections
for index, conn in enumerate(connections):
    print(f"{index}) {conn.name}")
choice = int(input("Choose connection: "))
choice = connections[choice]
localIn = input("Local or Tailscale? (Default local) [L/t]: ")
isLocal = "local" if "t" in localIn else "tail"

finalIp = f"kyled@{choice.tail}"
if isLocal:
    finalIp = f"kdizzle@{choice.local}"

!(ssh @(finalIp))
