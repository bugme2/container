all :
	clang -O3 -fPIE -pie init.c -o init
	llvm-strip init
static :
	clang -static -O3 -fPIE init.c -o init
	llvm-strip init
clean :
	rm init||true
