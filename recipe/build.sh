cd $SRC_DIR/tightbind
cmake -DCMAKE_C_FLAGS="-O3" .
make
# Makefile can't do custom --prefix, do manual make install
mv bind eht_bind
mkdir -p $PREFIX/bin
cp eht_bind $PREFIX/bin
