export CC=clang

# ./configure
./configure --with-pydebug

# micromamba install bear abseil-cpp
# bear -- make -j16
# OR
micromamba create -n bear bear abseil-cpp
# $CONDA_PREFIX/../bear/bin/bear -- make -j16
micromamba run -n bear bear -- make -j16

cp compile_commands.json build/

./python.exe -v

###############################################################################

# objdump --syms libpython3.13d.a | grep debug
# Programs/python.c
# Modules/main.c
