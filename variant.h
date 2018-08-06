#ifndef variant_h_INCLUDED
#define variant_h_INCLUDED

#include <boost/variant.hpp>

using varcol_variant = boost::variant<uint8_t, int32_t, uint32_t, float, double>;

#endif /* variant_h_INCLUDED */
