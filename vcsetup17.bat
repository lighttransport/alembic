rmdir /q /s build-msvc
mkdir build-msvc

cmake.exe -G "Visual Studio 15 2017 Win64" -Bbuild-msvc -H.
