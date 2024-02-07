


#[cxx::bridge]
mod ffi {
    extern "Rust" {
        fn rust_integer() -> i32;
        fn frate_rust() -> String;
    }
}

pub fn frate_rust() -> String {
    "Hello from Frate and Rust".to_string()
}

pub fn rust_integer() -> i32 {
    42 + 69 + 420
}


