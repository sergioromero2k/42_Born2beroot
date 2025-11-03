### Deshabilitar KVM temporalmente
---
```bash
sudo modprobe -r kvm_amd
sudo modprobe -r kvm
```
* Luego intenta iniciar la VM de nuevo.
* **Nota:** Esto solo deshabilita KVM hasta el siguiente reinicio.