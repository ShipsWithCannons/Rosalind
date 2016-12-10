#include <ctype.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct uint8_t_arr {
    uint8_t arr[4];
} uint8_t_arr;

uint8_t_arr countACGT(char *input)
{
    uint16_t len = strlen(input);
    char nucleotide;
    uint8_t_arr *count = calloc(4, sizeof(uint8_t_arr));

    for(uint16_t i = 0; i < len; i++)
    {
        nucleotide = input[i];
        if isalnum(nucleotide)
        {
            if (nucleotide == 'A')
            {
                count->arr[0] += 1;
            }
            else if (nucleotide == 'C')
            {
                count->arr[1] += 1;
            }
            else if (nucleotide == 'G')
            {
                count->arr[2] += 1;
            }
            else if (nucleotide == 'T')
            {
                count->arr[3] += 1;
            }
        }
    }
    return *count;
}

void output(uint8_t_arr result)
{
    printf("%i %i %i %i\n", result.arr[0], result.arr[1], result.arr[2], result.arr[3]);
}

int main()
{
    size_t MAX_LENGTH = 1000;
    char *user_input;

    user_input = (char *) malloc (MAX_LENGTH + 1);
    getline (&user_input, &MAX_LENGTH, stdin);
    output(countACGT(user_input));
}
