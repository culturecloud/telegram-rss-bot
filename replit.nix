{ pkgs }: {
    deps = [
        pkgs.python311
        pkgs.mimalloc
        pkgs.jemalloc
        pkgs.wqy_microhei
    ];
    env = {
    LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.stdenv.cc.cc.lib
    ];
    };
}