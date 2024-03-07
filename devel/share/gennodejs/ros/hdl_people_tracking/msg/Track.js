// Auto-generated. Do not edit!

// (in-package hdl_people_tracking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cluster = require('./Cluster.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Track {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.age = null;
      this.pos = null;
      this.vel = null;
      this.pos_cov = null;
      this.vel_cov = null;
      this.k = null;
      this.ids = null;
      this.associated = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0.0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('pos_cov')) {
        this.pos_cov = initObj.pos_cov
      }
      else {
        this.pos_cov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('vel_cov')) {
        this.vel_cov = initObj.vel_cov
      }
      else {
        this.vel_cov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = 0;
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('associated')) {
        this.associated = initObj.associated
      }
      else {
        this.associated = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Track
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.float64(obj.age, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.vel, buffer, bufferOffset);
    // Check that the constant length array field [pos_cov] has the right length
    if (obj.pos_cov.length !== 9) {
      throw new Error('Unable to serialize array field pos_cov - length must be 9')
    }
    // Serialize message field [pos_cov]
    bufferOffset = _arraySerializer.float64(obj.pos_cov, buffer, bufferOffset, 9);
    // Check that the constant length array field [vel_cov] has the right length
    if (obj.vel_cov.length !== 9) {
      throw new Error('Unable to serialize array field vel_cov - length must be 9')
    }
    // Serialize message field [vel_cov]
    bufferOffset = _arraySerializer.float64(obj.vel_cov, buffer, bufferOffset, 9);
    // Serialize message field [k]
    bufferOffset = _serializer.int64(obj.k, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int64(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [associated]
    // Serialize the length for message field [associated]
    bufferOffset = _serializer.uint32(obj.associated.length, buffer, bufferOffset);
    obj.associated.forEach((val) => {
      bufferOffset = Cluster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Track
    let len;
    let data = new Track(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_cov]
    data.pos_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [vel_cov]
    data.vel_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [k]
    data.k = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [associated]
    // Deserialize array length for message field [associated]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.associated = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.associated[i] = Cluster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ids.length;
    length += 97 * object.associated.length;
    return length + 220;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hdl_people_tracking/Track';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd83e95598dbec66cab50a208fafde776';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    float64 age
    geometry_msgs/Point pos
    geometry_msgs/Vector3 vel
    
    float64[9] pos_cov
    float64[9] vel_cov
    
    int64 k
    int64[] ids
    
    hdl_people_tracking/Cluster[] associated
    
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
    ================================================================================
    MSG: hdl_people_tracking/Cluster
    bool is_human
    
    geometry_msgs/Point min_pt
    geometry_msgs/Point max_pt
    geometry_msgs/Vector3 size
    geometry_msgs/Point centroid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Track(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0.0
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Point.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Point()
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Vector3.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Vector3()
    }

    if (msg.pos_cov !== undefined) {
      resolved.pos_cov = msg.pos_cov;
    }
    else {
      resolved.pos_cov = new Array(9).fill(0)
    }

    if (msg.vel_cov !== undefined) {
      resolved.vel_cov = msg.vel_cov;
    }
    else {
      resolved.vel_cov = new Array(9).fill(0)
    }

    if (msg.k !== undefined) {
      resolved.k = msg.k;
    }
    else {
      resolved.k = 0
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.associated !== undefined) {
      resolved.associated = new Array(msg.associated.length);
      for (let i = 0; i < resolved.associated.length; ++i) {
        resolved.associated[i] = Cluster.Resolve(msg.associated[i]);
      }
    }
    else {
      resolved.associated = []
    }

    return resolved;
    }
};

module.exports = Track;
