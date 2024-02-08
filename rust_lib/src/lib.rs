#[cxx::bridge]
mod ffi {
    struct Point{
        x: i32,
        y: i32,
    }

    extern "Rust" {
        fn rust_integer() -> i32;
        fn frate_rust() -> String;
        fn init_point(p: &mut Point);
    }
    unsafe extern "C++" {
        include!("../include/rust_lib.hpp");
        
        type BlobstoreClient;
        fn new_blobstore_client() -> UniquePtr<BlobstoreClient>;
        fn say_hello(&self, name: &str);

    }
}
pub fn frate_cpp()  {
  let this = ffi::new_blobstore_client(); 
  this.say_hello("Frate and Rust");
}

pub fn init_point(p: &mut ffi::Point) {
    p.x = 10;
    p.y = 20;
}


pub fn frate_rust() -> String {
    frate_cpp();
    "Hello from Frate and Rust".to_string()
}

pub fn rust_integer() -> i32 {
    42 + 69 + 420
}

