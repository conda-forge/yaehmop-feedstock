cd $SRC_DIR/tightbind
cmake -DCMAKE_C_FLAGS="-O3" \
      -DUSE_BLAS_LAPACK=ON \
      -DBIND_EXE_NAME="eht_bind" \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      .
make
make install
