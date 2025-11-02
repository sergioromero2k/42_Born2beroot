# Visudo
---
El comando **visudo** es una herramienta especial para editar de forma segura el archivo de configuración de sudo, llamado `/etc/sudoers.`
Este archivo define quién puede usar sudo y qué comandos puede ejecutar con privilegios de administrador.

### ¿Qué hace exactamente visudo?
`visudo` abre el archivo `/etc/sudoers` en un editor de texto (por defecto vi o nano) pero con comprobación de seguridad.

Esto significa que:
* Bloquea el archivo para evitar que otro usuario lo edite al mismo tiempo.
* Verifica la sintaxis antes de guardar los cambios.
* Evita errores graves que podrían dejarte sin acceso administrativo.

### Sintaxis básica
```bash
sudo visudo
```
Esto abre el archivo **/etc/sudoers** con privilegios de administrador.

### Ejemplo de uso

Supongamos que quieres permitir que el usuario juan pueda ejecutar todos los comandos con sudo sin tener que escribir su contraseña.

Al ejecutar:
```bash
sudo visudo
```
y añadir esta línea al final del archivo:
```bash
juan ALL=(ALL) NOPASSWD: ALL
```

##### Significa
* **juan**: el nombre del usuario.
* **ALL**: puede ejecutar en cualquier host.
* **(ALL)**: puede ejecutar como cualquier usuario.
* **NOPASSWD**: no se le pedirá contraseña.
* **ALL**: puede ejecutar cualquier comando.

### ¿Por qué usar visudo y no editar directamente /etc/sudoers?
Porque si editas con un comando como:
```bash
sudo nano /etc/sudoers
```
y cometes un error de sintaxis (por ejemplo, un espacio mal puesto o un carácter inválido), podrías:

* Romper la configuración de sudo.
* Perder acceso administrativo, ya que sudo dejaría de funcionar correctamente.
* `visudo` evita esto revisando el archivo antes de guardarlo. Si detecta un error, te avisa y no guarda los cambios.

### Ubicación alternativa para configuraciones personalizadas

En lugar de tocar directamente /etc/sudoers, también puedes crear archivos dentro de:
```bash
/etc/sudoers.d/
```
Por ejemplo
```bash
sudo visudo -f /etc/sudoers.d/juan
```
Allí puedes poner reglas específicas (más limpio y seguro).