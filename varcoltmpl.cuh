#ifndef varcoltmpl_h_INCLUDED
#define varcoltmpl_h_INCLUDED

#include <cstdint>
#include <iostream>
#include <string>
#include <cuda_runtime.h>
#include <thrust/device_vector.h>
#include <varcolumn.h>
#include <boost/current_function.hpp>

template <class data_type>
class varcoltmpl : public varcolumn
{
public:
    varcoltmpl(std::size_t numItems, const data_type& val)
    {
        std::cout << BOOST_CURRENT_FUNCTION << std::endl;
        mHostData = host_vec(numItems, val);
    }

    ~varcoltmpl() { std::cout << BOOST_CURRENT_FUNCTION << std::endl; }

private:
    using host_vec   = thrust::host_vector<data_type>;
    using device_vec = thrust::device_vector<data_type>;

private:
    host_vec   mHostData;
    device_vec mDeviceData;
};

using int_varcol    = varcoltmpl<int32_t>;
using char_varcol   = varcoltmpl<int8_t>;
using float_varcol  = varcoltmpl<float>;
using double_varcol = varcoltmpl<double>;
// using string_varcol = varcoltmpl<std::string>;

#endif /* varcoltmpl_h_INCLUDED */
