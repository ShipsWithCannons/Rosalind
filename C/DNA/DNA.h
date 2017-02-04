#define _GNU_SOURCE
#include <ctype.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    uint8_t A;
    uint8_t C;
    uint8_t G;
    uint8_t T;
} nucleobase_frequencies;
