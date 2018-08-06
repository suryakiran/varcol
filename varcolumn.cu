#include <type_traits>
#include <varcolumn.h>
#include <varcoltmpl.cuh>

struct varcol_creator : public boost::static_visitor<varcolptr>
{
    varcol_creator(std::size_t numItems)
        : mNum(numItems)
    {}

    template <class T>
    varcolptr
    operator()(const T& val) const
    {
        return std::make_shared<varcoltmpl<T>>(mNum, val);
    }

    // template <class T>
    // varcolptr
    // operator()(const T& val) const
    // {
    //     return std::make_shared<string_varcol>(mNum, "abc");
    // }

private:
    std::size_t mNum;
};

varcolptr
varcolumn::create(std::size_t numItems, const varcol_variant& val)
{
    auto ret = boost::apply_visitor(varcol_creator(numItems), val);
    return ret;
}
