git clone https://github.com/foxsen/qemu.git
cd qemu
git checkout e494838b3ed63b738efbf76dfcf41a13c280437a
mkdir build
cd build
../configure --target-list=aarch64-softmmu,loongarch64-softmmu,riscv64-softmmu,x86_64-softmmu,aarch64-linux-user,loongarch64-linux-user,riscv64-linux-user,x86_64-linux-user --enable-kvm --enable-debug --disable-werror
make -j$(nproc)
make install
#rm qemu
