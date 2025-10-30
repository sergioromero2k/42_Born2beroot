# ¿Qué es LVM (Logical Volume Manager)?
---
**LVM (Logical Volume Manager, o Administrador de Volúmenes Lógicos)** es una capa de abstracción que se encuentra entre los dispositivos de almacenamiento físico (discos duros o particiones) y los sistemas de archivos de tu sistema operativo Linux.

En lugar de estar limitado por las particiones fijas de un disco duro tradicional, LVM te permite: 

1. **Contiene** el espacio de múltiples discos físicos en un único "pool" de almacenamiento.
2. **Redimensionar dinámicamente** (aumentar o disminuir) el tamaño de las particiones (llamadas Volúmenes Lógicos) sin necesidad de reiniciar o redistribuir físicamente el disco.

### Componenetes Clave de LVM
LVM organiza el almacenamiento en una jerarquía de 3 niveles:

| Componente            | Abreviatura | Descripción                                                                                              | Equivalente en Particionado Tradicional          |
|-----------------------|-------------|----------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| Volumen Físico       | PV          | Un disco duro completo o una partición que ha sido inicializada para ser usada por LVM.                | Un disco o una partición.                        |
| Grupo de Volúmenes    | VG          | El "pool" de almacenamiento. Es la combinación de uno o más PVs. Se comporta como un gran disco virtual.| Un gran disco duro conceptual.                    |
| Volumen Lógico        | LV          | El equivalente a una partición. Se crea dentro de un VG y es donde se almacena el sistema de archivos. | Una partición del disco.                          |


### Comandos Clave de LVM
Aquí tienes los comandos principales para gestionar LVM, agrupados por el componente que administran:


| Tarea                      | Comando Básico                          | Descripción                                                    |
|---------------------------|-----------------------------------------|----------------------------------------------------------------|
| Volumen Físico (PV)      | `pvcreate /dev/sdb1`                   | Inicializa un disco o partición para usarlo como PV.          |
|                           | `pvdisplay`                             | Muestra la información de los PVs.                            |
| Grupo de Volúmenes (VG)   | `vgcreate Nombre_VG /dev/sdb1`        | Crea un nuevo VG a partir de uno o más PVs.                  |
|                           | `vgextend Nombre_VG /dev/sdc`         | Añade un nuevo PV a un VG existente.                          |
|                           | `vgdisplay`                            | Muestra la información de los VGs.                            |
| Volumen Lógico (LV)      | `lvcreate -L 10G -n Nombre_LV Nombre_VG` | Crea un LV de 10 GB dentro de un VG.                        |
|                           | `lvextend -L +5G /dev/Nombre_VG/Nombre_LV` | Aumenta el tamaño de un LV en 5 GB.                      |
|                           | `lvdisplay`                            | Muestra la información de los LVs.                            |
| Redimensionar         | `lvresize`  | Cambia el tamaño de un volumen lógico. Se puede aumentar o disminuir el tamaño del LV.                   | Ajustar el tamaño de una partición.              |

**Nota**: Después de redimensionar un LV con lvextend o lvreduce, debes extender o reducir el sistema de archivos dentro del LV (por ejemplo, con `resize2fs` para ext4) para que el nuevo espacio sea usable.
