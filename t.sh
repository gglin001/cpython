# for ubuntu2004
apt install libffi-dev -y
apt install make -y
apt install pkg-config -y

apt install libssl-dev
# mamba install "openssl<2.0"

pip install compiledb

# export CC=clang

# ./configure
./configure --with-pydebug

compiledb make -j16

cp compile_commands.json build/

./python -v

objdump --syms libpython3.8d.a | grep debug

# Programs/python.c
# Modules/main.c
