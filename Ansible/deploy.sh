#!/bin/bash
#en este script simplemente ejecutamos el resto de playbooks en orden, con el set -e detenemos la ejecución si hay errores.
set -e
echo "Actualizamos y instalamos podman con nginx, levantamos también un contenedor nginx"
ansible-playbook -i hosts Playbookpodman.yml

echo "Desplegamos el Apache"
ansible-playbook -i hosts Playbookapache.yml

echo "Desplegamos ACR"
ansible-playbook -i hosts Playbookacr.yml

echo "Desplegamos en AKS con persistencia"
ansible-playbook -i hosts Playbookpersistente.yaml