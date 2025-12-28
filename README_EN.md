*This project was created as part of the 42 curriculum by sergioromero2k.*

# Born2beroot

## Description

Born2beroot is a project in the 42 curriculum designed to introduce students to the fundamentals of **system administration**, **security**, **virtualization**, and **best management practices in Linux**.  
The main objective is to install and configure a secure virtual machine, following a strict set of requirements related to user policies, partitioning, firewall, services, and system monitoring.

The project allows students to acquire skills in:
- Installation and configuration of server-type operating systems.
- Implementation of security policies.
- Handling basic services (SSH, firewall, sudo…).
- User and permission management.
- Understanding system control and isolation tools.

---

## Instructions

### 1. Prerequisites
- A compatible hypervisor (VirtualBox or UTM).
- The ISO of the chosen operating system (Debian or Rocky Linux).
- Internet connection to install additional packages if required.

### 2. Installation
1. Create a virtual machine with the specifications indicated by the project.
2. Perform the mandatory partitioning using LVM according to the manual.
3. Install the system along with required services (like SSH).
4. Configure the firewall (UFW or firewalld).
5. Configure sudo following the indicated security policy.
6. Create the necessary users and apply password rules.
7. Implement the requested monitoring script.

### 3. Execution
Once the virtual machine is configured:
- Start the VM from the hypervisor.
- Run the monitoring script manually or via cron.
- Access via SSH if remote administration is desired.

---

## Project Description: Technical Choices

### Operating System Choice: **Debian or Rocky Linux**

| Aspect | Debian | Rocky Linux |
|--------|--------|-------------|
| **Base** | Community | Enterprise (RHEL compatible) |
| **Stability** | Very stable, moderate updates | Very stable, enterprise support |
| **Package Management** | APT | DNF / RPM |
| **Documentation** | Extensive and community-driven | Strong enterprise focus |
| **Common Use** | Servers, lightweight machines, educational environments | Production systems, corporate environments |

**Motivation for choice:**  
I chose Debian for its simplicity and community ecosystem, and not Rocky Linux because I didn’t want to work with an enterprise RHEL system.

---

## Key Comparisons

### 1. **AppArmor vs SELinux**
| AppArmor | SELinux |
|----------|---------|
| Easier to configure | More complex but more granular |
| Path-based security | Context-based security |
| Easy to learn | Steeper learning curve |
| Used by Debian | Used by Rocky Linux |

### Choice:  
Depends on the selected OS:
- **Debian → AppArmor**
- **Rocky Linux → SELinux**

---

### 2. **UFW vs firewalld**
| UFW | firewalld |
|-----|-----------|
| Simple syntax | Dynamic and flexible configuration |
| Ideal for beginners | More powerful for production |
| Integrated with Debian | Integrated with Rocky Linux |

### Choice:
- **Debian → UFW**  
- **Rocky Linux → firewalld**

---

### 3. **VirtualBox vs UTM**
| VirtualBox | UTM |
|------------|-----|
| Free, cross-platform | Specialized for Apple Silicon |
| Easy to set up | Slower emulation if not using virtualization |
| Widely used in 42 | Alternative for M1/M2/M3 Macs |

### Choice:
Depends on student hardware:
- **PC / Intel Mac → VirtualBox**
- **ARM Mac → UTM**

---

## Design Choices During Configuration

### Partitioning
- Mandatory use of **LVM** for easier extensibility.
- Separate partitions (/, /home, /var, /tmp…) to improve security and stability.

### Security
- Strict sudo configuration according to project rules.
- Strong password policy.
- Use of AppArmor or SELinux depending on the OS.
- Active and configured firewall.

### User Management
- Creation of a main user and a specific group for sudo.
- Proper permission control.
- Auditing using commands like `last`, `sudo -l`, etc.

### Installed Services
- SSH configured with restrictions.
- Cron set to execute the monitoring script.
- Minimal services to avoid vulnerabilities.

---

## Resources

### Documentation and References
- Debian official documentation
- AppArmor manual
- SELinux guide
- UFW official guide
- Firewalld documentation
- LVM (Logical Volume Manager) manual
- GNU/Linux system administration guides
- YouTube tutorials

### Use of Artificial Intelligence (AI)
AI was used only for:
- Writing and organizing the README.
- Concept clarification about OS and security systems.
- Rewriting technical explanations.
- Questions on how to start with Born2beroot.
- Defining concepts and commands.

The actual project implementation, system configuration, service installation, and script writing were done manually by the student.

---

## Conclusion

Born2beroot is a fundamental project for understanding the foundations of system administration and security in Linux environments. It allows students to make real technical decisions, learn best practices, and gain a solid understanding of how to manage a secure server in real life.
