{ mkDerivation, aeson, aeson-pretty, base, bytestring, directory
, errors, filepath, io-streams, process, stdenv, text, transformers
, turtle, unordered-containers
}:
mkDerivation {
  pname = "melpa2nix";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson aeson-pretty base bytestring directory errors filepath
    io-streams process text transformers turtle unordered-containers
  ];
  description = "Automatically generate Nix expressions for Emacs packages";
  license = stdenv.lib.licenses.gpl3;
}
