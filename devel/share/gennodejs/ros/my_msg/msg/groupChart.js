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

class groupChart {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.numHuman = null;
      this.riskFactor = null;
    }
    else {
      if (initObj.hasOwnProperty('numHuman')) {
        this.numHuman = initObj.numHuman
      }
      else {
        this.numHuman = 0;
      }
      if (initObj.hasOwnProperty('riskFactor')) {
        this.riskFactor = initObj.riskFactor
      }
      else {
        this.riskFactor = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type groupChart
    // Serialize message field [numHuman]
    bufferOffset = _serializer.int64(obj.numHuman, buffer, bufferOffset);
    // Serialize message field [riskFactor]
    bufferOffset = _serializer.float64(obj.riskFactor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type groupChart
    let len;
    let data = new groupChart(null);
    // Deserialize message field [numHuman]
    data.numHuman = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [riskFactor]
    data.riskFactor = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_msg/groupChart';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97d4b5d0a9eee48cf3fa2d456080f40e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 numHuman
    float64 riskFactor
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new groupChart(null);
    if (msg.numHuman !== undefined) {
      resolved.numHuman = msg.numHuman;
    }
    else {
      resolved.numHuman = 0
    }

    if (msg.riskFactor !== undefined) {
      resolved.riskFactor = msg.riskFactor;
    }
    else {
      resolved.riskFactor = 0.0
    }

    return resolved;
    }
};

module.exports = groupChart;
