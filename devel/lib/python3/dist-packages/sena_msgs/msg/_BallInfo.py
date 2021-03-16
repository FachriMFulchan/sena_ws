# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sena_msgs/BallInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sena_msgs.msg
import std_msgs.msg

class BallInfo(genpy.Message):
  _md5sum = "842fb4e2989d0235594fa714af57acbd"
  _type = "sena_msgs/BallInfo"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header
int32  ballinfostate
bool   pos_known
bool   velocity_known
PPoint real_pos

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sena_msgs/PPoint
float32 angle
float32 radius
"""
  __slots__ = ['header','ballinfostate','pos_known','velocity_known','real_pos']
  _slot_types = ['std_msgs/Header','int32','bool','bool','sena_msgs/PPoint']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,ballinfostate,pos_known,velocity_known,real_pos

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BallInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.ballinfostate is None:
        self.ballinfostate = 0
      if self.pos_known is None:
        self.pos_known = False
      if self.velocity_known is None:
        self.velocity_known = False
      if self.real_pos is None:
        self.real_pos = sena_msgs.msg.PPoint()
    else:
      self.header = std_msgs.msg.Header()
      self.ballinfostate = 0
      self.pos_known = False
      self.velocity_known = False
      self.real_pos = sena_msgs.msg.PPoint()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2B2f().pack(_x.ballinfostate, _x.pos_known, _x.velocity_known, _x.real_pos.angle, _x.real_pos.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.real_pos is None:
        self.real_pos = sena_msgs.msg.PPoint()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.ballinfostate, _x.pos_known, _x.velocity_known, _x.real_pos.angle, _x.real_pos.radius,) = _get_struct_i2B2f().unpack(str[start:end])
      self.pos_known = bool(self.pos_known)
      self.velocity_known = bool(self.velocity_known)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2B2f().pack(_x.ballinfostate, _x.pos_known, _x.velocity_known, _x.real_pos.angle, _x.real_pos.radius))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.real_pos is None:
        self.real_pos = sena_msgs.msg.PPoint()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 14
      (_x.ballinfostate, _x.pos_known, _x.velocity_known, _x.real_pos.angle, _x.real_pos.radius,) = _get_struct_i2B2f().unpack(str[start:end])
      self.pos_known = bool(self.pos_known)
      self.velocity_known = bool(self.velocity_known)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_i2B2f = None
def _get_struct_i2B2f():
    global _struct_i2B2f
    if _struct_i2B2f is None:
        _struct_i2B2f = struct.Struct("<i2B2f")
    return _struct_i2B2f
