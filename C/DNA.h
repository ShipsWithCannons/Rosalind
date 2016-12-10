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
} uint8_t_container;

uint8_t_container countACGT(const char *nucleotide)
{
    uint16_t len = strlen(nucleotide);
    char nucleobase;
    uint8_t_container *count = calloc(4, sizeof(uint8_t_container));

    for(uint16_t i = 0; i < len; i++)
    {
        nucleobase = nucleotide[i];
        if isalnum(nucleobase)
        {
            if (nucleobase == 'A')
            {
                count->A += 1;
            }
            else if (nucleobase == 'C')
            {
                count->C += 1;
            }
            else if (nucleobase == 'G')
            {
                count->G += 1;
            }
            else if (nucleobase == 'T')
            {
                count->T += 1;
            }
        }
    }
    return *count;
}

void output(const uint8_t_container result)
{
    printf("%i %i %i %i\n", result.A, result.C, result.G, result.T);
}
