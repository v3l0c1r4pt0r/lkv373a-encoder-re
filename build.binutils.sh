# any error must cause failure
set -e
mkdir -p ../build-binutils-lkv373a
cd ../build-binutils-lkv373a
../binutils-gdb/configure --target=lkv373a-unknown-elf \
                          --disable-gas --disable-ld --disable-gdb \
                          --program-prefix=lkv373a-elf- \
                          --datarootdir=/tmp/share \
                          --disable-nls
make -j
sudo make install
