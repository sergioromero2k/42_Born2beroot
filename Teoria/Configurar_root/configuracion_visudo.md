### Estructura básica del archivo /etc/sudoers
Cada línea sigue esta forma general:
```bash
usuario  HOST=(USUARIOS) OPCIONES: COMANDOS
# Ejemplo:
juan  ALL=(ALL)  ALL
```
Significa
El usuario juan puede ejecutar cualquier comando (ALL), en cualquier máquina (ALL), como cualquier usuario ((ALL)).

### Configuraciones comunes por usuario
#### 1. Dar acceso total a un usuario
```bash
juan ALL=(ALL) ALL
```
* `juan` puede ejecutar cualquier comando con sudo (igual que root).

```bash
# Ejemplo de uso
sudo apt update
sudo systemctl restart apache2
```

#### 2. Permitir ejecutar sudo sin contraseña
```bash
juan ALL=(ALL) NOPASSWD: ALL
```
* `juan` puede usar sudo **sin que se le pida su contraseña.**
* Ideal para scripts automáticos o entornos de prueba. No se recomienda en servidores de producción.

#### 3. Permitir solo comandos específicos
```bash
juan ALL=(ALL) /sbin/reboot, /sbin/shutdown
# `juan` solo puede ejecutar reboot y shutdown como root.
# Ejemplo

sudo reboot
```
No podrá ejecutar nada más con sudo.

#### 4. Permitir ejecutar comandos como un usuario distinto
```bash
juan ALL=(maria) /usr/bin/tail /var/log/syslog
# juan puede ejecutar ese comando como si fuera el usuario maria.
# Ejemplo
sudo -u maria tail /var/log/syslog
```
#### 5. Dar permisos a grupos de usuarios
```bash
%soporte  ALL=(ALL) ALL
# Todos los usuarios del grupo soporte pueden usar sudo para cualquier comando.
# El símbolo % indica que se trata de un grupo.
```
#### 6. Permitir comandos sin registrar contraseña, pero solo algunos
```bash
juan ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart apache2, /usr/bin/systemctl restart nginx
# juan puede reiniciar esos servicios sin contraseña, pero para otros comandos sí se la pedirá.
```
#### 7. Restringir comandos peligrosos
```bash
juan ALL=(ALL) ALL, !/bin/rm, !/usr/bin/passwd
# juan puede usar sudo para todo excepto los comandos rm y passwd.
El símbolo ! sirve para denegar comandos específicos.
```

### Configuración del entorno y alias
##### Alias de usuarios, hosts o comandos

Puedes crear alias para simplificar reglas complejas:
```bash
User_Alas ADMINES = juan, maria
Host_Alias SERVIDORES = servidor1, servidor2
Cmnd_Alias APPS = /usr/bin/systemctl restart nginx, /usr/bin/systemctl restart apache2

ADMINES SERVIDORES = (root) APPS
```
* `juan` y `maria` pueden reiniciar servicios en servidor1 y servidor2.

### Archivo adicional en /etc/sudoers.d/

En lugar de editar directamente `/etc/sudoers`, puedes crear archivos individuales, por ejemplo:
```bash
sudo visudo -f /etc/sudoers.d/juan
```
Y dentro colocar:
```bash
juan ALL=(ALL) NOPASSWD: ALL
```
* Esto es más seguro y mantiene el archivo principal limpio.

### Otras configuraciones globales útiles

Estas se suelen definir al principio del archivo /etc/sudoers:
| Configuración                   | Descripción                                                     |
| ------------------------------- | --------------------------------------------------------------- |
| `Defaults timestamp_timeout=0`  | Hace que siempre pida contraseña al usar `sudo`.                |
| `Defaults timestamp_timeout=10` | Recordará la contraseña por 10 minutos.                         |
| `Defaults env_reset`            | Limpia variables de entorno inseguras al usar `sudo`.           |
| `Defaults insults`              | Muestra mensajes “divertidos” si escribes mal la contraseña. 😄 |
| `Defaults mail_badpass`         | Envía correo al administrador si alguien falla al usar sudo.    |

### Resumen rápido
| Objetivo             | Configuración                                    |
| -------------------- | ------------------------------------------------ |
| Dar permisos totales | `juan ALL=(ALL) ALL`                             |
| Sin contraseña       | `juan ALL=(ALL) NOPASSWD: ALL`                   |
| Comandos específicos | `juan ALL=(ALL) /usr/bin/reboot`                 |
| Grupo con sudo       | `%soporte ALL=(ALL) ALL`                         |
| Denegar comandos     | `juan ALL=(ALL) ALL, !/bin/rm`                   |
| Alias de comandos    | `Cmnd_Alias APPS = /usr/bin/systemctl restart *` |
