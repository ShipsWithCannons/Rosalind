#include "DNA.h"

nucleobase_frequencies countACGT(const char *nucleotide)
{
    uint16_t len = strlen(nucleotide);
    char nucleobase;
    nucleobase_frequencies *count = calloc(1, sizeof(nucleobase_frequencies));

    for(uint16_t i = 0; i < len; i++)
    {
        nucleobase = nucleotide[i];
        if isalnum(nucleobase)
        {
            switch(nucleobase)
            {
                case 'A':
                    count->A += 1;
                    break;
                case 'C':
                    count->C += 1;
                    break;
                case 'G':
                    count->G += 1;
                    break;
                default:
                    count->T += 1;
            }
        }
    }
    return *count;
}

void output(const nucleobase_frequencies result)
{
    printf("%i %i %i %i\n", result.A, result.C, result.G, result.T);
}
