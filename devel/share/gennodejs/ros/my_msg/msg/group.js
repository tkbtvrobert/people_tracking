// Auto-generated. Do not edit!

// (in-package my_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class group {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eps = null;
      this.minpts = null;
    }
    else {
      if (initObj.hasOwnProperty('eps')) {
        this.eps = initObj.eps
      }
      else {
        this.eps = 0.0;
      }
      if (initObj.hasOwnProperty('minpts')) {
        this.minpts = initObj.minpts
      }
      else {
        this.minpts = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type group
    // Serialize message field [eps]
    bufferOffset = _serializer.float64(obj.eps, buffer, bufferOffset);
    // Serialize message field [minpts]
    bufferOffset = _serializer.int64(obj.minpts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type group
    let len;
    let data = new group(null);
    // Deserialize message field [eps]
    data.eps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minpts]
    data.minpts = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msg/group';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b8807b2a10657febff20e77600c08cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 eps
    int64 minpts
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new group(null);
    if (msg.eps !== undefined) {
      resolved.eps = msg.eps;
    }
    else {
      resolved.eps = 0.0
    }

    if (msg.minpts !== undefined) {
      resolved.minpts = msg.minpts;
    }
    else {
      resolved.minpts = 0
    }

    return resolved;
    }
};

module.exports = group;
