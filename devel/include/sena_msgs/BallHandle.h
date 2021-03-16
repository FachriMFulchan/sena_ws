// Generated by gencpp from file sena_msgs/BallHandle.msg
// DO NOT EDIT!


#ifndef SENA_MSGS_MESSAGE_BALLHANDLE_H
#define SENA_MSGS_MESSAGE_BALLHANDLE_H

#include <ros/service_traits.h>


#include <sena_msgs/BallHandleRequest.h>
#include <sena_msgs/BallHandleResponse.h>


namespace sena_msgs
{

struct BallHandle
{

typedef BallHandleRequest Request;
typedef BallHandleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct BallHandle
} // namespace sena_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::sena_msgs::BallHandle > {
  static const char* value()
  {
    return "f352f0080766880a151542e750a50ea8";
  }

  static const char* value(const ::sena_msgs::BallHandle&) { return value(); }
};

template<>
struct DataType< ::sena_msgs::BallHandle > {
  static const char* value()
  {
    return "sena_msgs/BallHandle";
  }

  static const char* value(const ::sena_msgs::BallHandle&) { return value(); }
};


// service_traits::MD5Sum< ::sena_msgs::BallHandleRequest> should match
// service_traits::MD5Sum< ::sena_msgs::BallHandle >
template<>
struct MD5Sum< ::sena_msgs::BallHandleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::sena_msgs::BallHandle >::value();
  }
  static const char* value(const ::sena_msgs::BallHandleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::sena_msgs::BallHandleRequest> should match
// service_traits::DataType< ::sena_msgs::BallHandle >
template<>
struct DataType< ::sena_msgs::BallHandleRequest>
{
  static const char* value()
  {
    return DataType< ::sena_msgs::BallHandle >::value();
  }
  static const char* value(const ::sena_msgs::BallHandleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::sena_msgs::BallHandleResponse> should match
// service_traits::MD5Sum< ::sena_msgs::BallHandle >
template<>
struct MD5Sum< ::sena_msgs::BallHandleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::sena_msgs::BallHandle >::value();
  }
  static const char* value(const ::sena_msgs::BallHandleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::sena_msgs::BallHandleResponse> should match
// service_traits::DataType< ::sena_msgs::BallHandle >
template<>
struct DataType< ::sena_msgs::BallHandleResponse>
{
  static const char* value()
  {
    return DataType< ::sena_msgs::BallHandle >::value();
  }
  static const char* value(const ::sena_msgs::BallHandleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SENA_MSGS_MESSAGE_BALLHANDLE_H
