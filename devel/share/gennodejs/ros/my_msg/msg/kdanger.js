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

class kdanger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.k = null;
      this.ids = null;
    }
    else {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kdanger
    // Serialize message field [k]
    bufferOffset = _serializer.int64(obj.k, buffer, bufferOffset);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.int64(obj.ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kdanger
    let len;
    let data = new kdanger(null);
    // Deserialize message field [k]
    data.k = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.int64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ids.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msg/kdanger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a04d1d0f8657453cc420eb9b555ea1a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 k
    int64[] ids
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kdanger(null);
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

    return resolved;
    }
};

module.exports = kdanger;
