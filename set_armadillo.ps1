# set Armadillo config.hpp
(Get-Content ./armadillo/include/armadillo_bits/config.hpp).replace('#define ARMA_USE_NEWARP', '// #define ARMA_USE_NEWARP') | Set-Content ./armadillo/include/armadillo_bits/config.hpp
(Get-Content ./armadillo/include/armadillo_bits/config.hpp).replace('// #define ARMA_DONT_USE_STD_MUTEX', '#define ARMA_DONT_USE_STD_MUTEX') | Set-Content ./armadillo/include/armadillo_bits/config.hpp

# copy to mingw64 include directory
Copy-Item ./armadillo/include/armadillo ./mingw64/x86_64-w64-mingw32/include/armadillo
Copy-Item ./armadillo/include/armadillo_bits -r ./mingw64/x86_64-w64-mingw32/include/armadillo armadillo_bits
Copy-Item ./armadillo/LICENSE.txt ./mingw64/licenses/Armadillo.txt
