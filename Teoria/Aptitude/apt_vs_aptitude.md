## Apt
---

### 1. Qué son APT y Aptitude
| Herramienta                                   | Qué es                                                                                                | Interfaz                                                        | Backend                                                                          |
| --------------------------------------------- | ----------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| **APT** (`apt`, `apt-get`, `apt-cache`, etc.) | Una colección de herramientas de línea de comandos para gestionar paquetes en sistemas Debian/Ubuntu. | Solo **línea de comandos**                                      | Usa directamente la biblioteca **libapt-pkg**                                    |
| **Aptitude**                                  | Un **front-end** (interfaz) más inteligente y con más opciones, también basado en APT.                | Tiene **interfaz visual en modo texto** y **línea de comandos** | Usa **APT** por debajo, pero con su propio sistema de resolución de dependencias |

### 2. Diferencias prácticas

#### a) Resolución de dependencias
* **APT** instala o elimina paquetes según las dependencias exactas, pero si hay conflictos, simplemente falla.
* **Aptitude** intenta resolver automáticamente los conflictos ofreciendo alternativas (por ejemplo, quitar otro paquete o cambiar una versión).

```bash
sudo apt install paquete-raro
# Error: conflicto de dependencias.
sudo aptitude install paquete-raro
```
Aptitude te mostrará varias soluciones:
* No instalar el paquete.
* Quitar otro paquete que causa conflicto.
* Cambiar versión de dependencias.

#### b) Interfaz
* **APT**: pura terminal, rápida, ideal para scripts.
* **Aptitude**: tiene una interfaz de texto interactiva (como un menú navegable en consola).

Ejemplo:
```bash
sudo aptitude
```
* Se abre un menú tipo ncurses donde puedes navegar con las flechas, buscar paquetes, marcar para instalar o eliminar, etc.

#### c) Uso en scripts o automatización
* **APT**: más estable y predecible en entornos automáticos (scripts, CI/CD, Dockerfiles).
* **Aptitude**: más usado de forma manual o para diagnosticar problemas complejos de dependencias.

Ejemplo de uso en script:
```bash
# Script de instalación automática
sudo apt update && sudo apt install -y nginx curl git
```
#### d) Recomendaciones de paquetes
* **Aptitude** muestra más información, como por qué un paquete se instala, qué recomienda o sugiere.
* **APT** también puede hacerlo, pero es más limitado.

Ejemplo:
```bash
sudo aptitude why firefox
# “firefox está instalado porque lo requiere task-desktop”.
```
### 3. Ejemplos de la vida real
| Escenario                                       | Herramienta recomendada | Ejemplo                                      |
| ----------------------------------------------- | ----------------------- | -------------------------------------------- |
| Actualizar un servidor Ubuntu                   | **APT**                 | `sudo apt update && sudo apt upgrade -y`     |
| Resolver un conflicto de dependencias en Debian | **Aptitude**            | `sudo aptitude install paquete-problematico` |
| Construir una imagen Docker                     | **APT**                 | `RUN apt-get install -y python3`             |
| Buscar paquetes e inspeccionar dependencias     | **Aptitude**            | `sudo aptitude` (interfaz visual)            |
| Trabajar con scripts automáticos                | **APT**                 | Se integra mejor en pipelines o scripts.     |
