cmd_Release/obj.target/real-hrtime-linux.node := g++ -o Release/obj.target/real-hrtime-linux.node -shared -pthread -rdynamic -m64  -Wl,-soname=real-hrtime-linux.node -Wl,--start-group Release/obj.target/real-hrtime-linux/src/index.o Release/obj.target/real-hrtime-linux/src/rht-linux.o -Wl,--end-group 