use NativeCall;

constant LIBPATH="$*CWD/target/debug/moi";
sub moi() returns Str is native(LIBPATH) { * }

say moi();
