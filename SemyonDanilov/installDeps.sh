opam pin add GT https://github.com/Kakadu/GT.git -n -y
opam pin add ostap https://github.com/dboulytchev/ostap.git -n -y
opam install camlp5 -
opam install GT ostap ocamlfind -y
eval `opam config env`
sudo apt-get install gcc-multilib -y
