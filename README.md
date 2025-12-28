*Este proyecto ha sido creado como parte del currículo de 42 por sergioromero2k.*

# Born2beroot

##  Descripción

Born2beroot es un proyecto del currículo de 42 diseñado para introducir al estudiante en los fundamentos de la **administración de sistemas**, la **seguridad**, la **virtualización** y las **buenas prácticas de gestión en Linux**.  
El objetivo principal es instalar y configurar una máquina virtual segura, siguiendo una serie de requisitos estrictos relacionados con la política de usuarios, particionado, firewall, servicios y monitorización del sistema.

El proyecto permite adquirir competencias en:
- Instalación y configuración de sistemas operativos tipo servidor.
- Aplicación de políticas de seguridad.
- Manejo de servicios básicos (SSH, firewall, sudo…).
- Gestión de usuarios y permisos.
- Comprensión de herramientas de control y aislamiento del sistema.

---

## Instrucciones

### 1. Requisitos previos
- Un hipervisor compatible (VirtualBox o UTM).
- La ISO del sistema operativo elegido (Debian o Rocky Linux).
- Conexión para instalar paquetes adicionales si corresponde.

### 2. Instalación
1. Crear una máquina virtual con las especificaciones indicadas por el proyecto.
2. Realizar el particionado obligatorio mediante LVM según el manual.
3. Instalar el sistema junto con los servicios requeridos (como SSH).
4. Configurar el firewall (UFW o firewalld).
5. Configurar sudo siguiendo la política de seguridad indicada.
6. Crear los usuarios necesarios y aplicar las reglas de contraseña.
7. Implementar el script de monitorización solicitado.

### 3. Ejecución
Una vez configurada la máquina virtual:
- Encender la VM desde el hipervisor.
- Ejecutar el script de monitorización manualmente o configurado vía cron.
- Acceder mediante SSH si se desea administrar remotamente el sistema.

---

##  Descripción del Proyecto: Elecciones Técnicas

### Elección del sistema operativo: **Debian o Rocky Linux**

| Aspecto | Debian | Rocky Linux |
|--------|--------|-------------|
| **Base** | Comunidad | Empresa (RHEL compatible) |
| **Estabilidad** | Muy estable, actualizaciones moderadas | Muy estable, soporte empresarial |
| **Gestión de paquetes** | APT | DNF / RPM |
| **Documentación** | Amplia y comunitaria | Fuerte enfoque empresarial |
| **Uso habitual** | Servidores, máquinas ligeras, entornos educativos | Sistemas de producción, entornos corporativos |

**Motivación de la elección:**  
Escogi debian por su simplicidad y ecosistema comunitario, mientras que no Rocky Linux porque no quise trabajar con un sistema enterprise RHEL.


---

##  Comparaciones esenciales

### 1. **AppArmor vs SELinux**
| AppArmor | SELinux |
|----------|---------|
| Más sencillo de configurar | Más complejo pero más granular |
| Basado en rutas de archivo | Basado en contextos de seguridad |
| Fácil de aprender | Curva de aprendizaje más pronunciada |
| Usado por Debian | Usado por Rocky Linux |

### Elección:  
Dependerá del sistema operativo seleccionado:
- **Debian → AppArmor**
- **Rocky Linux → SELinux**

---

### 2. **UFW vs firewalld**
| UFW | firewalld |
|-----|-----------|
| Sintaxis simple | Configuración dinámica y flexible |
| Ideal para principiantes | Más potente para producción |
| Integrado con Debian | Integrado con Rocky Linux |

### Elección:
- **Debian → UFW**  
- **Rocky Linux → firewalld**

---

### 3. **VirtualBox vs UTM**
| VirtualBox | UTM |
|------------|-----|
| Gratuito, multiplataforma | Especializado para Apple Silicon |
| Fácil de configurar | Emulación más lenta si no es virtualización |
| Muy usado en 42 | Alternativa para Macs M1/M2/M3 |

### Elección:
Depende del hardware del estudiante:
- **PC / Mac Intel → VirtualBox**
- **Mac ARM → UTM**

---

##  Elecciones de diseño durante la configuración

### Particionado
- Uso obligatorio de **LVM** para facilitar la extensibilidad.
- Separación de particiones (/, /home, /var, /tmp…) para mejorar seguridad y estabilidad.

### Seguridad
- Configuración estricta de sudo según las reglas del proyecto.
- Política de contraseñas reforzada.
- Uso de AppArmor o SELinux según el SO.
- Firewall activo y configurado.

### Gestión de usuarios
- Creación de un usuario principal y un grupo específico para sudo.
- Control de permisos adecuado.
- Auditoría mediante comandos como `last`, `sudo -l`, etc.

### Servicios instalados
- SSH configurado con restricciones.
- Cron para ejecutar el script de monitorización.
- Servicios mínimos para evitar vulnerabilidades.

---

##  Recursos

### Documentación y referencias
- Documentación oficial de Debian
- Manual de AppArmor
- Guía de SELinux
- Guía oficial de UFW
- Firewalld documentation
- Manual LVM (Logical Volume Manager)
- GNU/Linux system administration guides
- Video de Youtube.

### Uso de inteligencia artificial (IA)
La IA se utilizó únicamente para:
- Redacción y organización del README.
- Aclaración conceptual sobre diferencias entre SO y sistemas de seguridad.
- Reformulación de explicaciones técnicas.
- Preguntas de como comenzar con Born2beRoot.
- Definicion de conceptos y comandos.

La implementación real del proyecto, configuración del sistema, instalación de servicios y escritura del script fueron realizados manualmente por el estudiante.

---

##  Conclusión

Born2beroot es un proyecto fundamental para comprender los cimientos de la administración de sistemas y la seguridad en entornos Linux. Permite al estudiante enfrentarse a decisiones técnicas reales, aprender buenas prácticas y obtener una visión sólida de cómo se gestiona un servidor seguro en la vida real.
