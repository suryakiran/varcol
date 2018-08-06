#ifndef varcolumn_h_INCLUDED
#define varcolumn_h_INCLUDED

#include <iostream>
#include <memory>
#include <variant.h>
#include <boost/current_function.hpp>

class varcolumn;
using varcolptr = std::shared_ptr<varcolumn>;

class varcolumn
{
public:
    varcolumn() { std::cout << BOOST_CURRENT_FUNCTION << std::endl; }

    static varcolptr create(std::size_t numItems, const varcol_variant& val);

    // ~varcolumn() = 0;
};

#endif /* varcolumn_h_INCLUDED */
