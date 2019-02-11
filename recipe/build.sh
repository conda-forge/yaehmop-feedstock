cd $SRC_DIR/tightbind
cmake -DUSE_BLAS_LAPACK=ON -DCMAKE_C_FLAGS="-O3" -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX .
make
make install
# Makefile can't do custom --prefix, do manual make install
mv $PREFIX/bin/bind $PREFIX/bin/eht_bind
