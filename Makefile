build : src/kotlin/main.kt kotliner.kt.bc
	konanc src/kotlin/main.kt -library build/kotliner/kotliner.kt.bc -nativelibrary build/kotliner/cn_kotliner.bc -o build/kotliner/kotliner.kexe

kotliner.kt.bc : kotliner.bc kotliner.def
	cinterop -def kotliner.def -o build/kotliner/kotliner.kt.bc

kotliner.bc : src/c/cn_kotliner.c src/c/cn_kotliner.h
	mkdir -p build/kotliner
	clang -std=c99  -c src/c/cn_kotliner.c -o build/kotliner/cn_kotliner.bc -emit-llvm

clean:
	  rm -rf build/kotliner
