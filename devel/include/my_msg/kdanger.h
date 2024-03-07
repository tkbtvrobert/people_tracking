// Generated by gencpp from file my_msg/kdanger.msg
// DO NOT EDIT!


#ifndef MY_MSG_MESSAGE_KDANGER_H
#define MY_MSG_MESSAGE_KDANGER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_msg
{
template <class ContainerAllocator>
struct kdanger_
{
  typedef kdanger_<ContainerAllocator> Type;

  kdanger_()
    : k(0)
    , ids()  {
    }
  kdanger_(const ContainerAllocator& _alloc)
    : k(0)
    , ids(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _k_type;
  _k_type k;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _ids_type;
  _ids_type ids;





  typedef boost::shared_ptr< ::my_msg::kdanger_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_msg::kdanger_<ContainerAllocator> const> ConstPtr;

}; // struct kdanger_

typedef ::my_msg::kdanger_<std::allocator<void> > kdanger;

typedef boost::shared_ptr< ::my_msg::kdanger > kdangerPtr;
typedef boost::shared_ptr< ::my_msg::kdanger const> kdangerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_msg::kdanger_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_msg::kdanger_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::my_msg::kdanger_<ContainerAllocator1> & lhs, const ::my_msg::kdanger_<ContainerAllocator2> & rhs)
{
  return lhs.k == rhs.k &&
    lhs.ids == rhs.ids;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::my_msg::kdanger_<ContainerAllocator1> & lhs, const ::my_msg::kdanger_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace my_msg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::my_msg::kdanger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_msg::kdanger_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_msg::kdanger_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_msg::kdanger_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_msg::kdanger_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_msg::kdanger_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_msg::kdanger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a04d1d0f8657453cc420eb9b555ea1a2";
  }

  static const char* value(const ::my_msg::kdanger_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa04d1d0f8657453cULL;
  static const uint64_t static_value2 = 0xc420eb9b555ea1a2ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_msg::kdanger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_msg/kdanger";
  }

  static const char* value(const ::my_msg::kdanger_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_msg::kdanger_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 k\n"
"int64[] ids\n"
;
  }

  static const char* value(const ::my_msg::kdanger_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_msg::kdanger_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.k);
      stream.next(m.ids);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct kdanger_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_msg::kdanger_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_msg::kdanger_<ContainerAllocator>& v)
  {
    s << indent << "k: ";
    Printer<int64_t>::stream(s, indent + "  ", v.k);
    s << indent << "ids[]" << std::endl;
    for (size_t i = 0; i < v.ids.size(); ++i)
    {
      s << indent << "  ids[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.ids[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_MSG_MESSAGE_KDANGER_H