apt-get install ocaml
apt-get install ocaml5o
apt-get install m4
apt-get install opam

opam init
opam pin add GT https://github.com/Kakadu/GT.git -n -y
opam install camlp5 -y
opam install GT ocamlfind -y