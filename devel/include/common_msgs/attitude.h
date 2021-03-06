// Generated by gencpp from file common_msgs/attitude.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_ATTITUDE_H
#define COMMON_MSGS_MESSAGE_ATTITUDE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace common_msgs
{
template <class ContainerAllocator>
struct attitude_
{
  typedef attitude_<ContainerAllocator> Type;

  attitude_()
    : pitch(0.0)
    , roll(0.0)  {
    }
  attitude_(const ContainerAllocator& _alloc)
    : pitch(0.0)
    , roll(0.0)  {
  (void)_alloc;
    }



   typedef float _pitch_type;
  _pitch_type pitch;

   typedef float _roll_type;
  _roll_type roll;





  typedef boost::shared_ptr< ::common_msgs::attitude_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::attitude_<ContainerAllocator> const> ConstPtr;

}; // struct attitude_

typedef ::common_msgs::attitude_<std::allocator<void> > attitude;

typedef boost::shared_ptr< ::common_msgs::attitude > attitudePtr;
typedef boost::shared_ptr< ::common_msgs::attitude const> attitudeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::attitude_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::attitude_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'common_msgs': ['/home/osama/global_ws/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::attitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::attitude_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::attitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::attitude_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::attitude_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::attitude_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b1f10c59316744f5ae4c3db11604b74f";
  }

  static const char* value(const ::common_msgs::attitude_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb1f10c59316744f5ULL;
  static const uint64_t static_value2 = 0xae4c3db11604b74fULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/attitude";
  }

  static const char* value(const ::common_msgs::attitude_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 pitch\n\
float32 roll\n\
";
  }

  static const char* value(const ::common_msgs::attitude_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::attitude_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pitch);
      stream.next(m.roll);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct attitude_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::attitude_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::attitude_<ContainerAllocator>& v)
  {
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<float>::stream(s, indent + "  ", v.roll);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_ATTITUDE_H
