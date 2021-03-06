// Generated by gencpp from file fetch_train/JointTrajRequest.msg
// DO NOT EDIT!


#ifndef FETCH_TRAIN_MESSAGE_JOINTTRAJREQUEST_H
#define FETCH_TRAIN_MESSAGE_JOINTTRAJREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <trajectory_msgs/JointTrajectoryPoint.h>

namespace fetch_train
{
template <class ContainerAllocator>
struct JointTrajRequest_
{
  typedef JointTrajRequest_<ContainerAllocator> Type;

  JointTrajRequest_()
    : point()  {
    }
  JointTrajRequest_(const ContainerAllocator& _alloc)
    : point(_alloc)  {
  (void)_alloc;
    }



   typedef  ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator>  _point_type;
  _point_type point;





  typedef boost::shared_ptr< ::fetch_train::JointTrajRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fetch_train::JointTrajRequest_<ContainerAllocator> const> ConstPtr;

}; // struct JointTrajRequest_

typedef ::fetch_train::JointTrajRequest_<std::allocator<void> > JointTrajRequest;

typedef boost::shared_ptr< ::fetch_train::JointTrajRequest > JointTrajRequestPtr;
typedef boost::shared_ptr< ::fetch_train::JointTrajRequest const> JointTrajRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fetch_train::JointTrajRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fetch_train::JointTrajRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fetch_train

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/melodic/share/trajectory_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fetch_train::JointTrajRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fetch_train::JointTrajRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fetch_train::JointTrajRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7842d451962922d45f80a152cd22cfe8";
  }

  static const char* value(const ::fetch_train::JointTrajRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7842d451962922d4ULL;
  static const uint64_t static_value2 = 0x5f80a152cd22cfe8ULL;
};

template<class ContainerAllocator>
struct DataType< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fetch_train/JointTrajRequest";
  }

  static const char* value(const ::fetch_train::JointTrajRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "trajectory_msgs/JointTrajectoryPoint point\n"
"\n"
"================================================================================\n"
"MSG: trajectory_msgs/JointTrajectoryPoint\n"
"# Each trajectory point specifies either positions[, velocities[, accelerations]]\n"
"# or positions[, effort] for the trajectory to be executed.\n"
"# All specified values are in the same order as the joint names in JointTrajectory.msg\n"
"\n"
"float64[] positions\n"
"float64[] velocities\n"
"float64[] accelerations\n"
"float64[] effort\n"
"duration time_from_start\n"
;
  }

  static const char* value(const ::fetch_train::JointTrajRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.point);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointTrajRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fetch_train::JointTrajRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fetch_train::JointTrajRequest_<ContainerAllocator>& v)
  {
    s << indent << "point: ";
    s << std::endl;
    Printer< ::trajectory_msgs::JointTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "  ", v.point);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FETCH_TRAIN_MESSAGE_JOINTTRAJREQUEST_H
