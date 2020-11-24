// Generated by gencpp from file my_srv2/Velocity2.msg
// DO NOT EDIT!


#ifndef MY_SRV2_MESSAGE_VELOCITY2_H
#define MY_SRV2_MESSAGE_VELOCITY2_H

#include <ros/service_traits.h>


#include <my_srv2/Velocity2Request.h>
#include <my_srv2/Velocity2Response.h>


namespace my_srv2
{

struct Velocity2
{

typedef Velocity2Request Request;
typedef Velocity2Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Velocity2
} // namespace my_srv2


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::my_srv2::Velocity2 > {
  static const char* value()
  {
    return "383299a41e921f0911e14981849d6e64";
  }

  static const char* value(const ::my_srv2::Velocity2&) { return value(); }
};

template<>
struct DataType< ::my_srv2::Velocity2 > {
  static const char* value()
  {
    return "my_srv2/Velocity2";
  }

  static const char* value(const ::my_srv2::Velocity2&) { return value(); }
};


// service_traits::MD5Sum< ::my_srv2::Velocity2Request> should match 
// service_traits::MD5Sum< ::my_srv2::Velocity2 > 
template<>
struct MD5Sum< ::my_srv2::Velocity2Request>
{
  static const char* value()
  {
    return MD5Sum< ::my_srv2::Velocity2 >::value();
  }
  static const char* value(const ::my_srv2::Velocity2Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_srv2::Velocity2Request> should match 
// service_traits::DataType< ::my_srv2::Velocity2 > 
template<>
struct DataType< ::my_srv2::Velocity2Request>
{
  static const char* value()
  {
    return DataType< ::my_srv2::Velocity2 >::value();
  }
  static const char* value(const ::my_srv2::Velocity2Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::my_srv2::Velocity2Response> should match 
// service_traits::MD5Sum< ::my_srv2::Velocity2 > 
template<>
struct MD5Sum< ::my_srv2::Velocity2Response>
{
  static const char* value()
  {
    return MD5Sum< ::my_srv2::Velocity2 >::value();
  }
  static const char* value(const ::my_srv2::Velocity2Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::my_srv2::Velocity2Response> should match 
// service_traits::DataType< ::my_srv2::Velocity2 > 
template<>
struct DataType< ::my_srv2::Velocity2Response>
{
  static const char* value()
  {
    return DataType< ::my_srv2::Velocity2 >::value();
  }
  static const char* value(const ::my_srv2::Velocity2Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MY_SRV2_MESSAGE_VELOCITY2_H
