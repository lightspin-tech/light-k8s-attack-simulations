#!/bin/bash

Help()
{
	# Display Help
	echo ""
	echo "Syntax: ./light-attack-simulation.sh [-h] [run|delete] [techniqueName] [-n|--namspace]"
	echo ""
	echo "required arguments:"
	echo "run		run technique simulation"
	echo "delete		delete technique simulation"
	echo "techniqueName		name of the use-case"
	echo ""
	echo "other arguments:"
	echo "-h --help         show this help message and exit"
	echo "-n --namespcae		install pod on spesific namespace"
}

namespace="default"

while test $# -gt 0; do
	case "$1" in
		run) 
			shift
			operation="run"
			yaml="$1.yaml"
			shift
			;;
		delete)
			shift
			operation="delete"
			yaml="$1"
			shift
			;;
		-h|--help)
			Help
			exit 0
			;;
		-n|--namespace)
			shift
			namespace=$1
			shift
			;;
	esac
done
if [ $operation == "run" ]; then
	kubectl apply -f ./manifests/$yaml -n $namespace
else
	kubectl delete pods $yaml -n $namespace
fi
exit 0
