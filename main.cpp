#include <iostream>
#include <varcolumn.h>

int
main(void)
{
    std::cout << "Hello Varcol" << std::endl;
    varcolumn::create(25, (uint8_t)2);
}
