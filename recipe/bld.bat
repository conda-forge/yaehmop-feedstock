setlocal EnableDelayedExpansion

:: Make a build folder and change to it.
mkdir build
cd build

:: Configure using the CMakeFiles
cmake -G "Ninja" ^
      -DCMAKE_C_FLAGS="-O3 -fPIC" ^
      -DUSE_BLAS_LAPACK=ON ^
      -DBIND_EXE_NAME="eht_bind" ^
      -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE:STRING=Release ^
      ../tightbind
if errorlevel 1 exit 1

:: Build!
ninja
if errorlevel 1 exit 1

:: Install!
ninja install
if errorlevel 1 exit 1