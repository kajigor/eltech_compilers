echo -en "travis_fold:start:prepare.ci\r"
# If a fork of these scripts is specified, use that GitHub user instead
fork_user=${FORK_USER:-ocaml}

# If a branch of these scripts is specified, use that branch instead of 'master'
fork_branch=${FORK_BRANCH:-master}

### Bootstrap

set -uex

get() {
  wget https://raw.githubusercontent.com/${fork_user}/ocaml-ci-scripts/${fork_branch}/$@
}

TMP_BUILD=$(mktemp -d 2>/dev/null || mktemp -d -t 'citmpdir')
cd ${TMP_BUILD}

get .travis-ocaml.sh
get yorick.mli
get yorick.ml
get ci_opam.ml

sh .travis-ocaml.sh
export OPAMYES=1
eval $(opam config env)

# This could be removed with some OPAM variable plumbing into build commands
opam install ocamlfind

ocamlc.opt yorick.mli
ocamlfind ocamlc -c yorick.ml

ocamlfind ocamlc -o ci-opam -package unix -linkpkg yorick.cmo ci_opam.ml
cd -

echo -en "travis_fold:end:prepare.ci\r"
