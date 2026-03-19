# Script-de-borrado-y-recuperacion
Este proyecto consiste en un par de scripts de Bash diseñados para gestionar una papelera personalizada en entornos Linux. 
Permite mover archivos a un directorio de seguridad en lugar de eliminarlos definitivamente y recuperarlos de forma sencilla cuando sea necesario.

Scripts incluidos:

borrado.sh
Este script funciona como un reemplazo seguro para el comando rm. 
En lugar de destruir los datos, los traslada a una carpeta de seguridad.

Ruta de destino por defecto: $HOME/.trash
Funcionamiento:
	Verifica la existencia del directorio destino, en caso contrario lo crea
	Comprueba la existencia del archivo a borrar
	Mueve los elementos

Ejemplo de uso:
./borrar.sh mi_archivo.txt carpeta_que_quieras_borrar/

recupera.sh
Complemento para el script anterior. 
Permite rescatar cualquier elemento que se encuentre actualmente en la papelera y devolverlo al directorio donde te encuentres trabajando.

Ruta de origen por defecto: $HOME/.trash
Funcionamiento:
	Verifica que el archivo solicitado esté en la papelera.
	Mueve el archivo al directorio actual (.).
	Informa al usuario si el archivo no fue encontrado.

Ejemplo de uso:
./recuperar.sh mi_archivo.txt

Buenas Prácticas Implementadas:
    Uso de $@: Permite procesar múltiples archivos al mismo tiempo.
    Validaciones con test: Comprobación constante de existencia de archivos y directorios (-e, -d).
    Feedback en consola: Mensajes claros sobre el estado de cada operación.
