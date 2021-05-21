// Auto-generated. Do not edit!

// (in-package wpb_home_bringup.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motorpos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorpos1 = null;
      this.motorpos2 = null;
      this.motorpos3 = null;
      this.nParseCount = null;
      this.fPosDiff1 = null;
      this.fPosDiff2 = null;
      this.fPosDiff3 = null;
    }
    else {
      if (initObj.hasOwnProperty('motorpos1')) {
        this.motorpos1 = initObj.motorpos1
      }
      else {
        this.motorpos1 = 0;
      }
      if (initObj.hasOwnProperty('motorpos2')) {
        this.motorpos2 = initObj.motorpos2
      }
      else {
        this.motorpos2 = 0;
      }
      if (initObj.hasOwnProperty('motorpos3')) {
        this.motorpos3 = initObj.motorpos3
      }
      else {
        this.motorpos3 = 0;
      }
      if (initObj.hasOwnProperty('nParseCount')) {
        this.nParseCount = initObj.nParseCount
      }
      else {
        this.nParseCount = 0;
      }
      if (initObj.hasOwnProperty('fPosDiff1')) {
        this.fPosDiff1 = initObj.fPosDiff1
      }
      else {
        this.fPosDiff1 = 0.0;
      }
      if (initObj.hasOwnProperty('fPosDiff2')) {
        this.fPosDiff2 = initObj.fPosDiff2
      }
      else {
        this.fPosDiff2 = 0.0;
      }
      if (initObj.hasOwnProperty('fPosDiff3')) {
        this.fPosDiff3 = initObj.fPosDiff3
      }
      else {
        this.fPosDiff3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motorpos
    // Serialize message field [motorpos1]
    bufferOffset = _serializer.int64(obj.motorpos1, buffer, bufferOffset);
    // Serialize message field [motorpos2]
    bufferOffset = _serializer.int64(obj.motorpos2, buffer, bufferOffset);
    // Serialize message field [motorpos3]
    bufferOffset = _serializer.int64(obj.motorpos3, buffer, bufferOffset);
    // Serialize message field [nParseCount]
    bufferOffset = _serializer.int64(obj.nParseCount, buffer, bufferOffset);
    // Serialize message field [fPosDiff1]
    bufferOffset = _serializer.float64(obj.fPosDiff1, buffer, bufferOffset);
    // Serialize message field [fPosDiff2]
    bufferOffset = _serializer.float64(obj.fPosDiff2, buffer, bufferOffset);
    // Serialize message field [fPosDiff3]
    bufferOffset = _serializer.float64(obj.fPosDiff3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motorpos
    let len;
    let data = new motorpos(null);
    // Deserialize message field [motorpos1]
    data.motorpos1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motorpos2]
    data.motorpos2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [motorpos3]
    data.motorpos3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [nParseCount]
    data.nParseCount = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [fPosDiff1]
    data.fPosDiff1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fPosDiff2]
    data.fPosDiff2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [fPosDiff3]
    data.fPosDiff3 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'wpb_home_bringup/motorpos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4efa34688fb890a2741cdd11f6591d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 motorpos1
    int64 motorpos2
    int64 motorpos3
    int64 nParseCount
    float64 fPosDiff1
    float64 fPosDiff2
    float64 fPosDiff3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motorpos(null);
    if (msg.motorpos1 !== undefined) {
      resolved.motorpos1 = msg.motorpos1;
    }
    else {
      resolved.motorpos1 = 0
    }

    if (msg.motorpos2 !== undefined) {
      resolved.motorpos2 = msg.motorpos2;
    }
    else {
      resolved.motorpos2 = 0
    }

    if (msg.motorpos3 !== undefined) {
      resolved.motorpos3 = msg.motorpos3;
    }
    else {
      resolved.motorpos3 = 0
    }

    if (msg.nParseCount !== undefined) {
      resolved.nParseCount = msg.nParseCount;
    }
    else {
      resolved.nParseCount = 0
    }

    if (msg.fPosDiff1 !== undefined) {
      resolved.fPosDiff1 = msg.fPosDiff1;
    }
    else {
      resolved.fPosDiff1 = 0.0
    }

    if (msg.fPosDiff2 !== undefined) {
      resolved.fPosDiff2 = msg.fPosDiff2;
    }
    else {
      resolved.fPosDiff2 = 0.0
    }

    if (msg.fPosDiff3 !== undefined) {
      resolved.fPosDiff3 = msg.fPosDiff3;
    }
    else {
      resolved.fPosDiff3 = 0.0
    }

    return resolved;
    }
};

module.exports = motorpos;
