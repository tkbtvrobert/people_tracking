// Auto-generated. Do not edit!

// (in-package my_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Human = require('./Human.js');

//-----------------------------------------------------------

class HumanArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.humans = null;
    }
    else {
      if (initObj.hasOwnProperty('humans')) {
        this.humans = initObj.humans
      }
      else {
        this.humans = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HumanArray
    // Serialize message field [humans]
    // Serialize the length for message field [humans]
    bufferOffset = _serializer.uint32(obj.humans.length, buffer, bufferOffset);
    obj.humans.forEach((val) => {
      bufferOffset = Human.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HumanArray
    let len;
    let data = new HumanArray(null);
    // Deserialize message field [humans]
    // Deserialize array length for message field [humans]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.humans = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.humans[i] = Human.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 80 * object.humans.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msg/HumanArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9aafaa8337ab2dec54a94b020f2289a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    my_msg/Human[] humans
    ================================================================================
    MSG: my_msg/Human
    int64 id
    int64 type
    int64 state
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HumanArray(null);
    if (msg.humans !== undefined) {
      resolved.humans = new Array(msg.humans.length);
      for (let i = 0; i < resolved.humans.length; ++i) {
        resolved.humans[i] = Human.Resolve(msg.humans[i]);
      }
    }
    else {
      resolved.humans = []
    }

    return resolved;
    }
};

module.exports = HumanArray;
