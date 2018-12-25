{ mkDerivation, Cabal, cabal-install, stdenv, base, free
} : mkDerivation {
  pname = "playground";
  version = "0.0.1";
  src = ./.;
  buildTools = [
    cabal-install
  ];
  setupHaskellDepends = [ base Cabal ];
  libraryHaskellDepends = [
    base free
  ];
  testHaskellDepends = [
    base
  ];
  homepage = "https://github.com/kendricktan/haskell-playground-boilerplate";
  description = "Boilerplate for Haskell playground environment";
  license = stdenv.lib.licenses.mit;
}
