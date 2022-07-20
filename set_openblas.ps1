mkdir ./mingw64/dll
Copy-Item ./openblas/include -r ./mingw64/x86_64-w64-mingw32/include
Copy-Item ./openblas/bin/libopenblas.dll ./mingw64/dll/libopenblas.dll
Copy-Item ./openblas/lib -r ./mingw64/x86_64-w64-mingw32/lib
Invoke-WebRequest https://raw.githubusercontent.com/xianyi/OpenBLAS/develop/LICENSE -o./mingw64/licenses/OpenBLAS.txt
