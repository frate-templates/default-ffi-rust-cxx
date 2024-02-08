#pragma once
#include <memory>
#include <cxx.h>

class BlobstoreClient {
public:
  BlobstoreClient();
  void say_hello(rust::Str name) const;
};

std::unique_ptr<BlobstoreClient> new_blobstore_client(); 
