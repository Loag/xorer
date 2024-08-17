
in order the do mapped memory communications the
way that we want to, we are going to need to use pcie.
both the driver and the microcontroller side will need
to set this up.

[ubuntu on qemu](https://documentation.ubuntu.com/server/how-to/virtualisation/arm64-vms-on-qemu/)
as driver host

example 
```
qemu-system-aarch64 -M virt -cpu cortex-a53 -m 1024 -nographic \
  -device pcie-root-port,addr=1c.0,id=root.1,chassis=1 \ # pcie 
  -device pci-testdev,bus=root.1,addr=00.0 \
  -object memory-backend-file,id=mem1,share=on,mem-path=/dev/shm/pcie_shared,size=1M \
  -device ivshmem,memdev=mem1
```


[stm32vldiscovery](https://www.qemu.org/docs/master/system/arm/stm32.html) as controller host

```
qemu-system-arm -M lm3s6965evb -cpu cortex-m4 -nographic \
  -device pci-testdev,addr=00.0 \
  -object memory-backend-file,id=mem1,share=on,mem-path=/dev/shm/pcie_shared,size=1M \
  -device ivshmem,memdev=mem1
```