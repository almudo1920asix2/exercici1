##Que solo se pueda ejecutar con privilegios root##
if (( EUID != 0 ))
then
  echo "Este script se tiene que ejecutar como root o con sus privilegios."
  exit 2
fi

clear

echo -n "Nombre del servicio: "
read servicio

service $servicio start
service $servicio status

exit 10

echo -n "Quieres continuar?"


exit 10
