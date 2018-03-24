	## works 
	git clean -dfx
	export ANDROID_NDK=~/android-ndk-r13b/
	cmake --verbose -DCMAKE_TOOLCHAIN_FILE="./android.toolchain.cmake"  -DANDROID_NDK="${ANDROID_NDK}"  -DCMAKE_BUILD_TYPE=RELEASE  -DANDROID_ABI="arm64-v8a" -DANDROID_NATIVE_API_LEVEL="android-21" -DCMAKE_MAKE_PROGRAM="${ANDROID_NDK}/prebuilt/linux-x86_64/bin/make" -Dprotobuf_BUILD_TESTS=off ./
	make -j 8
	
	git clean -dfx
	export ANDROID_NDK=~/android-ndk-r13b/
	cmake --verbose -DCMAKE_TOOLCHAIN_FILE="./android.toolchain.cmake"  -DANDROID_NDK="${ANDROID_NDK}"  -DCMAKE_BUILD_TYPE=RELEASE  -DANDROID_ABI="armeabi-v7a" -DANDROID_NATIVE_API_LEVEL="android-21" -DCMAKE_MAKE_PROGRAM="${ANDROID_NDK}/prebuilt/linux-x86_64/bin/make" -Dprotobuf_BUILD_TESTS=off ./
	make -j 8
	

	git clean -dfx
	export ANDROID_NDK=~/android-ndk-r16b/
	 ~/cmake-3.10.2-Linux-x86_64/bin/cmake -DCMAKE_TOOLCHAIN_FILE="~/android-ndk-r16b/build/cmake/android.toolchain.cmake" -DANDROID_NDK="${ANDROID_NDK}" -DCMAKE_BUILD_TYPE=DEBUG -DANDROID_ABI="armeabi-v7a" -DANDROID_NATIVE_API_LEVEL="android-21" -DCMAKE_MAKE_PROGRAM="${ANDROID_NDK}/prebuilt/linux-x86_64/bin/make"  -Dprotobuf_BUILD_TESTS=off  ./ 
	make -j 8

