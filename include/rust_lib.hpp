#pragma once
#include <iostream>
#include <memory>
#include <cxx.h>

class BlobstoreClient {
public:
  BlobstoreClient(){
    std::cout << "hello from class in cpp" << std::endl;
  };

  void say_hello(rust::Str name) const {
    std::cout << "Hello, " << name << "!!" << std::endl;

  }


};

inline std::unique_ptr<BlobstoreClient> new_blobstore_client() {
  return std::unique_ptr<BlobstoreClient>(new BlobstoreClient());
} 
