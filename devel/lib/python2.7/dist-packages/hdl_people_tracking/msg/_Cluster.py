# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from hdl_people_tracking/Cluster.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class Cluster(genpy.Message):
  _md5sum = "8bbe286e65ded24df1e6c701b484c2d7"
  _type = "hdl_people_tracking/Cluster"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool is_human

geometry_msgs/Point min_pt
geometry_msgs/Point max_pt
geometry_msgs/Vector3 size
geometry_msgs/Point centroid

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['is_human','min_pt','max_pt','size','centroid']
  _slot_types = ['bool','geometry_msgs/Point','geometry_msgs/Point','geometry_msgs/Vector3','geometry_msgs/Point']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       is_human,min_pt,max_pt,size,centroid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Cluster, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.is_human is None:
        self.is_human = False
      if self.min_pt is None:
        self.min_pt = geometry_msgs.msg.Point()
      if self.max_pt is None:
        self.max_pt = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Point()
    else:
      self.is_human = False
      self.min_pt = geometry_msgs.msg.Point()
      self.max_pt = geometry_msgs.msg.Point()
      self.size = geometry_msgs.msg.Vector3()
      self.centroid = geometry_msgs.msg.Point()

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
      buff.write(_get_struct_B12d().pack(_x.is_human, _x.min_pt.x, _x.min_pt.y, _x.min_pt.z, _x.max_pt.x, _x.max_pt.y, _x.max_pt.z, _x.size.x, _x.size.y, _x.size.z, _x.centroid.x, _x.centroid.y, _x.centroid.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.min_pt is None:
        self.min_pt = geometry_msgs.msg.Point()
      if self.max_pt is None:
        self.max_pt = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 97
      (_x.is_human, _x.min_pt.x, _x.min_pt.y, _x.min_pt.z, _x.max_pt.x, _x.max_pt.y, _x.max_pt.z, _x.size.x, _x.size.y, _x.size.z, _x.centroid.x, _x.centroid.y, _x.centroid.z,) = _get_struct_B12d().unpack(str[start:end])
      self.is_human = bool(self.is_human)
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
      buff.write(_get_struct_B12d().pack(_x.is_human, _x.min_pt.x, _x.min_pt.y, _x.min_pt.z, _x.max_pt.x, _x.max_pt.y, _x.max_pt.z, _x.size.x, _x.size.y, _x.size.z, _x.centroid.x, _x.centroid.y, _x.centroid.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.min_pt is None:
        self.min_pt = geometry_msgs.msg.Point()
      if self.max_pt is None:
        self.max_pt = geometry_msgs.msg.Point()
      if self.size is None:
        self.size = geometry_msgs.msg.Vector3()
      if self.centroid is None:
        self.centroid = geometry_msgs.msg.Point()
      end = 0
      _x = self
      start = end
      end += 97
      (_x.is_human, _x.min_pt.x, _x.min_pt.y, _x.min_pt.z, _x.max_pt.x, _x.max_pt.y, _x.max_pt.z, _x.size.x, _x.size.y, _x.size.z, _x.centroid.x, _x.centroid.y, _x.centroid.z,) = _get_struct_B12d().unpack(str[start:end])
      self.is_human = bool(self.is_human)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B12d = None
def _get_struct_B12d():
    global _struct_B12d
    if _struct_B12d is None:
        _struct_B12d = struct.Struct("<B12d")
    return _struct_B12d