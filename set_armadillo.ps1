# set Armadillo config.hpp
(Get-Content ./armadillo/include/armadillo_bits/config.hpp).replace('#define ARMA_USE_NEWARP', '// #define ARMA_USE_NEWARP') | Set-Content ./armadillo/include/armadillo_bits/config.hpp
(Get-Content ./armadillo/include/armadillo_bits/config.hpp).replace('// #define ARMA_DONT_USE_STD_MUTEX', '#define ARMA_DONT_USE_STD_MUTEX') | Set-Content ./armadillo/include/armadillo_bits/config.hpp

# copy to mingw64 include directory
Copy-Item -Path ./armadillo/include/armadillo -Destination ./mingw64/x86_64-w64-mingw32/include/armadillo
Copy-Item -Path ./armadillo/include/armadillo_bits -Destination ./mingw64/x86_64-w64-mingw32/include/armadillo_bits -Recurse
Copy-Item -Path ./armadillo/LICENSE.txt -Destination ./mingw64/licenses/Armadillo.txt
