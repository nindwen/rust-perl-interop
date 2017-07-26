use std::ffi::CString;
use std::os::raw::c_char;

#[no_mangle]
pub extern fn moi() -> *const c_char {
    let s = CString::new("Kissat on tööt ärsyttäviä").unwrap();
    let p = s.as_ptr();
    std::mem::forget(s);
    p
}
