// Auto-generated. Do not edit!

// (in-package hdl_people_tracking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_human = null;
      this.min_pt = null;
      this.max_pt = null;
      this.size = null;
      this.centroid = null;
    }
    else {
      if (initObj.hasOwnProperty('is_human')) {
        this.is_human = initObj.is_human
      }
      else {
        this.is_human = false;
      }
      if (initObj.hasOwnProperty('min_pt')) {
        this.min_pt = initObj.min_pt
      }
      else {
        this.min_pt = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('max_pt')) {
        this.max_pt = initObj.max_pt
      }
      else {
        this.max_pt = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('centroid')) {
        this.centroid = initObj.centroid
      }
      else {
        this.centroid = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster
    // Serialize message field [is_human]
    bufferOffset = _serializer.bool(obj.is_human, buffer, bufferOffset);
    // Serialize message field [min_pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.min_pt, buffer, bufferOffset);
    // Serialize message field [max_pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.max_pt, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [centroid]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.centroid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster
    let len;
    let data = new Cluster(null);
    // Deserialize message field [is_human]
    data.is_human = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [min_pt]
    data.min_pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_pt]
    data.max_pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [centroid]
    data.centroid = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdl_people_tracking/Cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bbe286e65ded24df1e6c701b484c2d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_human
    
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
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cluster(null);
    if (msg.is_human !== undefined) {
      resolved.is_human = msg.is_human;
    }
    else {
      resolved.is_human = false
    }

    if (msg.min_pt !== undefined) {
      resolved.min_pt = geometry_msgs.msg.Point.Resolve(msg.min_pt)
    }
    else {
      resolved.min_pt = new geometry_msgs.msg.Point()
    }

    if (msg.max_pt !== undefined) {
      resolved.max_pt = geometry_msgs.msg.Point.Resolve(msg.max_pt)
    }
    else {
      resolved.max_pt = new geometry_msgs.msg.Point()
    }

    if (msg.size !== undefined) {
      resolved.size = geometry_msgs.msg.Vector3.Resolve(msg.size)
    }
    else {
      resolved.size = new geometry_msgs.msg.Vector3()
    }

    if (msg.centroid !== undefined) {
      resolved.centroid = geometry_msgs.msg.Point.Resolve(msg.centroid)
    }
    else {
      resolved.centroid = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Cluster;
