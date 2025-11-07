## Pasos Generales y Consejos para Empezar
---
### 1. Preparación de la Máquina Virtual
**A. Instala un Hypervisor:** Comienza instalando un software de virtualización como **VirtualBox** linux o **UTM** si no puedes utilizar VirtualBox, el **UTM** es para portatiles que lleven apple de S.O. ya que muchas veces no se le permite instalar VirtualBox en ellos.

- No usar hypervisor que no sea VirtualBox o UTM, esta **prohibido**.

**B. Elige el SO:** Descarga la **imagen ISO** de una distribución Linux, como **Debian** (generalmente la versión **netinst** para una instalación mínima).

### 2. Instalación del Sistema Operativo
**A. Instalación Mínima:** Instala Debian en la VM con una instalación mínima (sin entorno gráfico/escritorio) para centrarte en la línea de comandos.

##### Pasos VirtualBox (Recomendado, para parecerse al proyecto)
* **Name** Born2beRoot, por ejemplo.


Cuando vayas a montar la maquina virtual, te recomiendo no colocarla directamente ya que puede pasar lo que se llama la **instalación Desatendida**, es decir la autoconfiguración. Debido a que las versiones de 7.x de VirtualBox tiene esta función activada por defecto, esta **instalación Desatendida** te impide ver y configurar pasos cruciales para este proyecto como el **particionamiento manual**, la **creación de usuarios**, la **seleccion de paquetes**, fundamental para **netinst**.

* El siguiente paso, es solo instalar en modo terminal, sin interfaz gráfica.
* Recodar poner el idioma y lugar que te corresponda, yo puse spanish, España.


**B. Particionamiento LVM:** Uno de los requisitos suele ser usar **LVM (Logical Volume Manager)** para gestionar las particiones, y a menudo se pide que al menos dos particiones estén cifradas (encriptadas). 