
#include <stdint.h>
#include <stdio.h>

#define PRINTF printf

uint64_t PLAT_GetNONCE(void);

int main()
{
    uint64_t nonce;
    for (int i = 0; i < 10; i++)
    {
        nonce = PLAT_GetNONCE();
        PRINTF("iteration #%d - 0x%016lx\n", i, nonce);
    }
    return 0;
}
