| Distribución          | Enlace de descarga oficial                                                                                   |
|-----------------------|--------------------------------------------------------------------------------------------------------------|
| **Debian**            | [Debian netinst](https://www.debian.org/CD/netinst/)                                                         |
| **Ubuntu**            | [Ubuntu Minimal ISO](https://ubuntu.com/download/server)                                                     |
| **Devuan**            | [Devuan netinst](https://www.devuan.org/get-devuan)                                                          |
| **Kali Linux**        | [Kali Linux NetInstaller](https://www.kali.org/get-kali/#kali-linux-network-installer)                       |
| **Rocky Linux**       | [Rocky Linux Minimal ISO](https://rockylinux.org/download)                                                   |
| **AlmaLinux**         | [AlmaLinux Minimal ISO](https://almalinux.org/get-almalinux/)                                                |
| **CentOS Stream**     | [CentOS Stream Minimal ISO](https://www.centos.org/download/)                                                |
| **Arch Linux**        | [Arch Linux](https://archlinux.org/download/)                                                                |
| **openSUSE**          | [openSUSE Network Installer](https://software.opensuse.org/distributions/leap)                              |
| **Fedora**            | [Fedora Netinstall](https://getfedora.org/en/server/download/)                                               |


La arquitectura de procesador que debes elegir para tu CD netinst de Debian para el proyecto Born2beRoot en 42 es **amd64**. Es la elección estándar. Se refiere a los procesadores de 64 bits (x86-64), que son los que utilizan la gran mayoría de los ordenadores de escritorio y portátiles modernos (Intel y AMD). Este es el que usarás.

### Verificar
```bash
# Liux
cat /etc/os-release 
uname -a
uname -m
# Windows (CMD o PowerShell)
systeminfo
systeminfo | findstr /B /C:"Modelo de procesador"
```

#### Linux
| Salida              | Significado                                                                                                                                                                                                   |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x86_64`            | Esta es la arquitectura **AMD64**. Significa que el procesador es de **64 bits** (arquitectura original de AMD que Intel también adoptó). Esta es la arquitectura más común y la que probablemente necesites. |
| `i686` o `i386`     | Arquitectura de **32 bits**.                                                                                                                                                                                  |
| `arm64` o `aarch64` | Arquitectura **ARM de 64 bits**, común en dispositivos móviles y algunos Macs nuevos.                                                                                                                         |

#### Windows
| Parte de la salida | Significado                                                                                                                                                                                                                   |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x64`              | Esta es la arquitectura **AMD64**. Al igual que en Linux, `x64` confirma que tu sistema anfitrión es de **64 bits**, lo que significa que la imagen **netinst de Debian amd64** es la que debes usar para la máquina virtual. |
| `x86`              | Arquitectura de **32 bits**.                                                                                                                                                                                                  |
