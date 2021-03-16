// Generated by gencpp from file sena_common/OdomInfo.msg
// DO NOT EDIT!


#ifndef SENA_COMMON_MESSAGE_ODOMINFO_H
#define SENA_COMMON_MESSAGE_ODOMINFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace sena_common
{
template <class ContainerAllocator>
struct OdomInfo_
{
  typedef OdomInfo_<ContainerAllocator> Type;

  OdomInfo_()
    : header()
    , Vx(0.0)
    , Vy(0.0)
    , w(0.0)
    , RobotStuck(false)
    , PowerState(false)  {
    }
  OdomInfo_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , Vx(0.0)
    , Vy(0.0)
    , w(0.0)
    , RobotStuck(false)
    , PowerState(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _Vx_type;
  _Vx_type Vx;

   typedef float _Vy_type;
  _Vy_type Vy;

   typedef float _w_type;
  _w_type w;

   typedef uint8_t _RobotStuck_type;
  _RobotStuck_type RobotStuck;

   typedef uint8_t _PowerState_type;
  _PowerState_type PowerState;





  typedef boost::shared_ptr< ::sena_common::OdomInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sena_common::OdomInfo_<ContainerAllocator> const> ConstPtr;

}; // struct OdomInfo_

typedef ::sena_common::OdomInfo_<std::allocator<void> > OdomInfo;

typedef boost::shared_ptr< ::sena_common::OdomInfo > OdomInfoPtr;
typedef boost::shared_ptr< ::sena_common::OdomInfo const> OdomInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sena_common::OdomInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sena_common::OdomInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sena_common::OdomInfo_<ContainerAllocator1> & lhs, const ::sena_common::OdomInfo_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.Vx == rhs.Vx &&
    lhs.Vy == rhs.Vy &&
    lhs.w == rhs.w &&
    lhs.RobotStuck == rhs.RobotStuck &&
    lhs.PowerState == rhs.PowerState;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sena_common::OdomInfo_<ContainerAllocator1> & lhs, const ::sena_common::OdomInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sena_common

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sena_common::OdomInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sena_common::OdomInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::OdomInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sena_common::OdomInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::OdomInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sena_common::OdomInfo_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sena_common::OdomInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b4f534aa8c080899ef112a410cc2c113";
  }

  static const char* value(const ::sena_common::OdomInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb4f534aa8c080899ULL;
  static const uint64_t static_value2 = 0xef112a410cc2c113ULL;
};

template<class ContainerAllocator>
struct DataType< ::sena_common::OdomInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sena_common/OdomInfo";
  }

  static const char* value(const ::sena_common::OdomInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sena_common::OdomInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float32 Vx\n"
"float32 Vy\n"
"float32 w\n"
"bool RobotStuck\n"
"bool PowerState\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::sena_common::OdomInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sena_common::OdomInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.Vx);
      stream.next(m.Vy);
      stream.next(m.w);
      stream.next(m.RobotStuck);
      stream.next(m.PowerState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OdomInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sena_common::OdomInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sena_common::OdomInfo_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "Vx: ";
    Printer<float>::stream(s, indent + "  ", v.Vx);
    s << indent << "Vy: ";
    Printer<float>::stream(s, indent + "  ", v.Vy);
    s << indent << "w: ";
    Printer<float>::stream(s, indent + "  ", v.w);
    s << indent << "RobotStuck: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.RobotStuck);
    s << indent << "PowerState: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.PowerState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENA_COMMON_MESSAGE_ODOMINFO_H
