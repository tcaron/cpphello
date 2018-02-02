with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "mymat-env";
  buildInputs = [ cmake pkgconfig eigen ];
  shellHook = ''
    export MY_BUILD="$(pwd)/build"
    alias my_cmake="rm -rf $MY_BUILD; mkdir $MY_BUILD; cd $MY_BUILD; cmake ..; cd -"
    alias my_make="make -C $MY_BUILD"
    alias my_run="$MY_BUILD/mymat"
  '';
}