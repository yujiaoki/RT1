// Generated by gencpp from file assignment1/Vel.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT1_MESSAGE_VEL_H
#define ASSIGNMENT1_MESSAGE_VEL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment1
{
template <class ContainerAllocator>
struct Vel_
{
  typedef Vel_<ContainerAllocator> Type;

  Vel_()
    : name()
    , vx(0.0)
    , vy(0.0)  {
    }
  Vel_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , vx(0.0)
    , vy(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef float _vx_type;
  _vx_type vx;

   typedef float _vy_type;
  _vy_type vy;





  typedef boost::shared_ptr< ::assignment1::Vel_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment1::Vel_<ContainerAllocator> const> ConstPtr;

}; // struct Vel_

typedef ::assignment1::Vel_<std::allocator<void> > Vel;

typedef boost::shared_ptr< ::assignment1::Vel > VelPtr;
typedef boost::shared_ptr< ::assignment1::Vel const> VelConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment1::Vel_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment1::Vel_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace assignment1

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'assignment1': ['/root/my_ros2/my_ros_ws/src/assignment1/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::assignment1::Vel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment1::Vel_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment1::Vel_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment1::Vel_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment1::Vel_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment1::Vel_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment1::Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d833d480c3eb8ae23bf95ade0fb8ca0";
  }

  static const char* value(const ::assignment1::Vel_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d833d480c3eb8aeULL;
  static const uint64_t static_value2 = 0x23bf95ade0fb8ca0ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment1::Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment1/Vel";
  }

  static const char* value(const ::assignment1::Vel_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment1::Vel_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
float32 vx\n\
float32 vy\n\
";
  }

  static const char* value(const ::assignment1::Vel_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment1::Vel_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.vx);
      stream.next(m.vy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Vel_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment1::Vel_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment1::Vel_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "vx: ";
    Printer<float>::stream(s, indent + "  ", v.vx);
    s << indent << "vy: ";
    Printer<float>::stream(s, indent + "  ", v.vy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT1_MESSAGE_VEL_H
