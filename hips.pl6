use NativeCall;

constant LIBPATH="$*CWD/target/debug/moi";
sub moi() returns Str is native(LIBPATH) { * }
sub hirvi(int32) returns int32 is native(LIBPATH) { * }

say moi();
say (^10).map(&hirvi)
