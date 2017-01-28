#include "DNA.c"

int main()
{
    size_t MAX_LENGTH = 1000;
    char *user_input;

    user_input = (char *) malloc (MAX_LENGTH + 1);
    getline (&user_input, &MAX_LENGTH, stdin);
    output(countACGT(user_input));
}
