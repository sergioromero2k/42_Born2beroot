## Sergiolenette
---
##### Advertencia de revisión de proyectos

Todos los proyectos serán evaluados rigurosamente. Cualquier incumplimiento de los criterios o respuesta incorrecta resultará en suspenso automático. Revisa cuidadosamente cada apartado y asegúrate de cumplir con todos los requisitos antes de entregar.

- Debe estar instalado numero minimo de servicios.
- No debe tener interfaz grafica (Ejm: X.org, etc.).
- Ultima versión estable de Debin (no testing/unstable) o Rocky.
- Debe ejecutarse SELinux y AppArmor al inciar el proyecto y configurarse automaticamente.
- Crear al menos 2 particiones cifradas usando LVM.
- Servicio SSH se ejecuta en el puerto 4242 obligatoriamente!.
- Probar SSH si conecta, y no debe poder conectarse como root en el SSH. (Por seguridad).
- Preguntarle sobre que es SSH y como funciona.
- Debe estar configurado el S.O. con firewall UFW (o firewalld en Rocky), dejando solo el puerto 4242 en abierto en tu máquina virtual.
- Debe estar activo (ON), cuando se ejecute la máquina virtual.


- El hostname de tu MV debe ser tu login más 42:

| Elemento            | Requisito de Nomenclatura                  | Ejemplo (si tu login es `jlopez`) |
|--------------------|-------------------------------------------|----------------------------------|
| **Hostname (Nombre de la máquina)** | Tu login de 42 + 42                     | `jlopez42`                       |
| **Usuario Estándar** | Tu login de 42 (el que usas en el campus) | `jlopez`                         |
| **Usuario Root**    | El nombre canónico en Linux: `root`       | `root`                           |
| **Domain Name**    | Cualquiera es opcional       | `jlopez.42` o `jlopez.local`                           |


- Debe tener un **contaseña fuerte**: - 1er Filtro
```
Las contraseñas deben tener un mínimo de 10 caracteres.
Las contraseñas deben incluir al menos:
    Una letra mayúscula (A-Z)
    Una letra minúscula (a-z)
    Un número (0-9)
    Un carácter especial (por ejemplo, !, @, #, $, %, ^, &, *) **Extra**
    No puede tener más de 3 veces consecutivas el mismo carácter.
    La contraseña no puede contener el nombre del usuario.

    La siguiente regla no se aplica a la contraseña para root:
        La contraseña debe tener al menos 7 caracteres que no sean parte de la antigua contraseña.
        La contraseña para root debe seguir esta política.
```

- Debe tener un **contaseña fuerte**: - 2do Filtro
```
Tu contraseña debe expirar cada 30 días.
El número mínimo de días permitido antes de modificar una contraseña deberá ser 2.
El usuario debe recibir un mensaje de aviso 7 días antes de que su contraseña expire.
Debe contener
```

- Tener instalado y configurado sudo siguiendo las reglas estrictas.
- El usuario debe pertenecer a los grupos user42 y sudo.
- Revisar que luego que preparo los archivos de configuración, hizo cambiar todas las cuentas presentes en la máquina virtual, root incluida.

- Establece contraseña fuerte para el grupo **sudo**.
pág 8.

##### Acciones de personas
- Hacer preguntas sobre el S.O. (Debian o Rocky) cual haya elegido.
- Debe al menos tener la idea de la que es y la diferencia entre aptitude, apt, SELinux y AppArmor.
- Debe crear en tu delante un usuario y asignarlo a un grupo.
- Debe modificar el hostname(serr42) durante la evaluación.

### Rocky
* Si no es Rocky, no configurar KDump.

