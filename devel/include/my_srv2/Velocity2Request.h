// Generated by gencpp from file my_srv2/Velocity2Request.msg
// DO NOT EDIT!


#ifndef MY_SRV2_MESSAGE_VELOCITY2REQUEST_H
#define MY_SRV2_MESSAGE_VELOCITY2REQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace my_srv2
{
template <class ContainerAllocator>
struct Velocity2Request_
{
  typedef Velocity2Request_<ContainerAllocator> Type;

  Velocity2Request_()
    : x(0.0)
    , y(0.0)
    , xt(0.0)
    , yt(0.0)  {
    }
  Velocity2Request_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , xt(0.0)
    , yt(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _xt_type;
  _xt_type xt;

   typedef float _yt_type;
  _yt_type yt;





  typedef boost::shared_ptr< ::my_srv2::Velocity2Request_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::my_srv2::Velocity2Request_<ContainerAllocator> const> ConstPtr;

}; // struct Velocity2Request_

typedef ::my_srv2::Velocity2Request_<std::allocator<void> > Velocity2Request;

typedef boost::shared_ptr< ::my_srv2::Velocity2Request > Velocity2RequestPtr;
typedef boost::shared_ptr< ::my_srv2::Velocity2Request const> Velocity2RequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::my_srv2::Velocity2Request_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::my_srv2::Velocity2Request_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace my_srv2

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::my_srv2::Velocity2Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::my_srv2::Velocity2Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_srv2::Velocity2Request_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::my_srv2::Velocity2Request_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_srv2::Velocity2Request_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::my_srv2::Velocity2Request_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::my_srv2::Velocity2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "88f5c7912ea722d93e217ee222491a77";
  }

  static const char* value(const ::my_srv2::Velocity2Request_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x88f5c7912ea722d9ULL;
  static const uint64_t static_value2 = 0x3e217ee222491a77ULL;
};

template<class ContainerAllocator>
struct DataType< ::my_srv2::Velocity2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "my_srv2/Velocity2Request";
  }

  static const char* value(const ::my_srv2::Velocity2Request_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::my_srv2::Velocity2Request_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 x\n\
float32 y\n\
float32 xt\n\
float32 yt\n\
";
  }

  static const char* value(const ::my_srv2::Velocity2Request_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::my_srv2::Velocity2Request_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.xt);
      stream.next(m.yt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Velocity2Request_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::my_srv2::Velocity2Request_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::my_srv2::Velocity2Request_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "xt: ";
    Printer<float>::stream(s, indent + "  ", v.xt);
    s << indent << "yt: ";
    Printer<float>::stream(s, indent + "  ", v.yt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MY_SRV2_MESSAGE_VELOCITY2REQUEST_H