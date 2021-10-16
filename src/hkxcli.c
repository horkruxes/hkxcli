#include <stdio.h>
#include <stdlib.h>

#include "hkxcli_config.h"

int main() {
  printf("Welcome to hkxcli version %d.%d\n", HKXCLI_VERSION_MAJOR,
         HKXCLI_VERSION_MINOR);
  return EXIT_SUCCESS;
}
