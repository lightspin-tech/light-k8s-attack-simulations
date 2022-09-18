# Light K8S Attack Simulations

This repository contains cases to simulate an unusual/malicious behavior in linux containers. These simulations triggers alerts for new advanced Falco rules, used in Lightspin K8s runtime protection solution.

Every case has a Dockerfile that build an image for the relevant simulation and yaml file to apply Pod inside the cluster that monitor by Falco. 
When the pod is running the container inside runs a bash script, this script contains the relevant command to trigger the Falco alert. 

## Use Cases

Technique Name | Rule Name  | Description|
----------|-------------|------------------|
modify-password-files | Modify Password Files |Attempts to modify /etc/passwd and /etc/shadow files | 
dump-process-memory | Dump Process Memory | Gathering credentials from information stored in the Proc filesystem | 
modify-ssh-authorized-keys | Modify SSH Authorized Keys | Editing of SSH authorized_keys file to maintain persistence on compromised environment |
logs-removal | Logs Removal | Delete of system and audit logs |
mount-cgroups-into-container | Mount Cgroups Into Container | Detect mount of cgroups into container (used to container escapes) |
outbound-connection-to-miner | Detect Outbound Connections To Common Miner Pool Ports | Miners typically connect to miner pools on common ports (NOTE: Execute xmrig inside the container)

## Get Started 

1. Connect the K8s cluster to Lightspin and enable the runtime protection option.
2. Connect to the cluster using kubectl cli.
3. Clone the repository and change directory to the main folder
```console
git clone https://github.com/lightspin-tech/light-k8s-attack-simulations.git
cd light-k8s-attack-simulations
``` 
4. Choose use case (Technique name) from the above table.
5. Run the following command:
```console
./light-attack-simulation.sh run [Technique Name]
```

## Uninstall

Run the following command:
```console
./light-attack-simulation.sh delete [Technique Name]
```

## Usage

```bash
Syntax: ./light-attack-simulation.sh [-h] [run|delete] [techniqueName] [-n|--namspace]

required arguments:
run		run technique simulation
delete		delete technique simulation
techniqueName		name of use-case

other arguments:
-h --help         show this help message and exit
-n --namespcae		install pod on spesific namespace
 ```
 
 ## Blogs and Guides
**Guide to analyzing kubernetes runtime alerts using Lightspin & Amazon Athena  [Blog Link](https://blog.lightspin.io/the-guide-to-analyzing-kubernetes-runtime-detection-alerts-using-amazon-athena)**
