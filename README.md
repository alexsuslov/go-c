# go-c
```
package main

import "C"
import "fmt"

func main() {
	fmt.Println("Starting...")
}
```
run 
```
./app
```
exec error

```
/app # ldd app 
        /lib64/ld-linux-x86-64.so.2 (0x7f8104323000)
        libpthread.so.0 => /lib64/ld-linux-x86-64.so.2 (0x7f8104323000)
        libc.so.6 => /lib64/ld-linux-x86-64.so.2 (0x7f8104323000)

```

add to Dockerfile

```
RUN apk add gcompat
```
```
./app
Starting...
```


