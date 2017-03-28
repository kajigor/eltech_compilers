Dependencies:

`$ opam pin add GT https://github.com/Kakadu/GT.git -n -y`

`$ opam install camlp5 -y`

`$ opam install GT ocamlfind -y`

Build & use: 

`$ make`

`$ gcc -m32 -c runtime.c`

`$ RUNTIME=. ./compiler file.expr`

`$ ./file`

If make fails with an error which states that GT.Syntax.All cannot be found, make sure you initialized and configured opam: 

`$ opam init`

``$ eval `opam config env` ``

Ostap library: 

`$ opam pin add ostap https://github.com/dboulytchev/ostap.git -n -y`

`$ opam install ostap -y`
