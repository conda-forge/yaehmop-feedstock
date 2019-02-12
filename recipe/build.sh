cd $SRC_DIR/tightbind
cmake -DUSE_BLAS_LAPACK=ON -DCMAKE_C_FLAGS="-O3" -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX .
make
# Makefile can't do custom --prefix, do manual make install
mv bind eht_bind
mkdir -p $PREFIX/bin
cp eht_bind $PREFIX/bin
