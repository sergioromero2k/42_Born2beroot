## Qué es el PATH
El **PATH** es una variable de entorno que le dice al sistema en qué directorios buscar los ejecutables cuando escribes un comando.

Por ejemplo, cuando haces:
```bash
ls
```
el sistema en realidad busca el binario ls dentro de los directorios definidos en ``$PATH``.
Puedes ver tu ``PATH`` actual con:
```bash
echo $PATH
```
### Qué hace secure_path en sudoers
La línea:
```bash
Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
```
* Le dice a sudo que solo debe buscar ejecutables en esas rutas seguras cuando se ejecuta un comando con sudo.
* Esto no cambia el PATH global del sistema, solo el PATH interno de los comandos ejecutados con sudo.

### ¿Por qué se restringe?
Para evitar ataques de escalada de privilegios o ejecución de binarios maliciosos.
Veamos un ejemplo 👇

#### Escenario inseguro (sin secure_path)
Supón que un usuario crea un binario falso llamado ls en su carpeta personal:
```bash
echo 'echo "Soy un virus :)"' > ~/ls
chmod +x ~/ls
```
Y luego ejecuta:
```bash
sudo ls
```
Si el ``PATH`` de sudo incluye su carpeta (``/home/usuario``), el sistema ejecutaría su ``~/ls`` como ``root``.
Eso sería una vulnerabilidad crítica.

#### Escenario seguro (con secure_path configurado)

Con secure_path configurado como:
```bash
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
```
El ``sudo`` ignora cualquier carpeta fuera de esas rutas (como ``/home/usuario``).
Así, el binario falso ``~/ls`` no se ejecuta nunca.
En su lugar, se ejecuta el verdadero ``/bin/ls``, que es de confianza.

**Resultado**: el sistema es seguro frente a ese tipo de ataque.

### Por qué justo esos directorios?
| Directorio        | Qué contiene                                  | Propósito                            |
| ----------------- | --------------------------------------------- | ------------------------------------ |
| `/usr/local/sbin` | programas instalados localmente para admin    | scripts o herramientas del admin     |
| `/usr/local/bin`  | programas instalados localmente para usuarios | software manualmente instalado       |
| `/usr/sbin`       | programas del sistema (administración)        | herramientas de red, seguridad, etc. |
| `/usr/bin`        | programas de usuario comunes                  | `ls`, `cat`, `nano`, etc.            |
| `/sbin`           | programas de bajo nivel del sistema           | `mount`, `shutdown`, etc.            |
| `/bin`            | comandos básicos del sistema                  | `echo`, `cp`, `mv`, etc.             |
| `/snap/bin`       | binarios instalados vía Snap (Ubuntu/Debian)  | apps modernas tipo `snap install`    |

Todos estos son rutas estándar y seguras, propiedad de root, sin permiso de escritura para usuarios normales.