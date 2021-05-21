// Auto-generated. Do not edit!

// (in-package LabExplainedRobot_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class face_detect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.face_num = null;
    }
    else {
      if (initObj.hasOwnProperty('face_num')) {
        this.face_num = initObj.face_num
      }
      else {
        this.face_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type face_detect
    // Serialize message field [face_num]
    bufferOffset = _serializer.int64(obj.face_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type face_detect
    let len;
    let data = new face_detect(null);
    // Deserialize message field [face_num]
    data.face_num = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'LabExplainedRobot_package/face_detect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e0e4a51140140eb557dc5a65700eebd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 face_num
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new face_detect(null);
    if (msg.face_num !== undefined) {
      resolved.face_num = msg.face_num;
    }
    else {
      resolved.face_num = 0
    }

    return resolved;
    }
};

module.exports = face_detect;
