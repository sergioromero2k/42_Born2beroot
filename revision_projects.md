## Sergiolenette
---
##### Advertencia de revisión de proyectos

Todos los proyectos serán evaluados rigurosamente. Cualquier incumplimiento de los criterios o respuesta incorrecta resultará en suspenso automático. Revisa cuidadosamente cada apartado y asegúrate de cumplir con todos los requisitos antes de entregar.

- Debe estar instalado numero minimo de servicios.
- No debe tener interfaz grafica (Ejm: X.org, etc.).
- Ultima versión estable de Debin (no testing/unstable) o Rocky.
- Debe ejecutarse SELinux y AppArmor al inciar el proyecto y configurarse automaticamente.
- Crear al menos 2 particiones cifradas usando LVM.
- Hacer preguntas sobre el S.O. (Debian o Rocky) cual haya elegido.
- Debe al menos tener la idea de la que es y la diferencia entre aptitude, apt, SELinux y AppArmor.
- Servicio SSH se ejecuta en el puerto 4242 obligatoriamente!.
- Probar SSH si conecta, y no debe poder conectarse como root en el SSH. (Por seguridad).
- Preguntarle sobre que es SSH y como funciona.
- Debe estar configurado el S.O. con firewall UFW (o firewalld en Rocky), dejando solo el puerto 4242 en abierto en tu máquina virtual.
- Debe estar activo (ON), cuando se ejecute la máquina virtual.


- El hostname de tu MV debe ser tu login más 42 (seror42).
- Debe tener un **contaseña fuerte**:
```
Las contraseñas deben tener un mínimo de 12 caracteres.
Las contraseñas deben incluir al menos:
    Una letra mayúscula (A-Z)
    Una letra minúscula (a-z)
    Un número (0-9)
    Un carácter especial (por ejemplo, !, @, #, $, %, ^, &, *)
```
- Tener instalado y configurado sudo siguiendo las reglas estrictas.
- El usuario debe pertenecer a los grupos user42 y sudo.

##### Acciones de personas
- Debe crear en tu delante un usuario y asignarlo a un grupo.



### Rocky
* Si no es Rocky, no configurar KDump.

