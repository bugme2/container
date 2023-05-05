all :
	clang -O3 -z noexecstack -z now -fstack-protector-all -fPIE -pie init.c -o init
	llvm-strip init
no :
	clang container.c -o init
static :
	clang -static -ffunction-sections -fdata-sections -Wl,--gc-sections -O3 -z noexecstack -z now -fstack-protector-all -fPIE init.c -o init
	llvm-strip init
clean :
	rm init||true
