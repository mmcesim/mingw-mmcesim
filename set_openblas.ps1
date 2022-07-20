mkdir ./mingw64/dll
Copy-Item -Path ./openblas/include/* -Destination ./mingw64/x86_64-w64-mingw32/include -Recurse
Copy-Item -Path ./openblas/bin/libopenblas.dll -Destination ./mingw64/dll/libopenblas.dll
Copy-Item -Path ./openblas/lib/* -Destination ./mingw64/x86_64-w64-mingw32/lib -Recurse
Invoke-WebRequest https://raw.githubusercontent.com/xianyi/OpenBLAS/develop/LICENSE -o./mingw64/licenses/OpenBLAS.txt
