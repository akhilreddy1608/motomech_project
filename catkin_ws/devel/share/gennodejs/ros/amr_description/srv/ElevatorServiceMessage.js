// Auto-generated. Do not edit!

// (in-package amr_description.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ElevatorServiceMessageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.elevator = null;
    }
    else {
      if (initObj.hasOwnProperty('elevator')) {
        this.elevator = initObj.elevator
      }
      else {
        this.elevator = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorServiceMessageRequest
    // Serialize message field [elevator]
    bufferOffset = _serializer.string(obj.elevator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorServiceMessageRequest
    let len;
    let data = new ElevatorServiceMessageRequest(null);
    // Deserialize message field [elevator]
    data.elevator = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.elevator);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'amr_description/ElevatorServiceMessageRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '134e7eb9269b8923eab3c88a53d027cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string elevator   # use "up" or "down" 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorServiceMessageRequest(null);
    if (msg.elevator !== undefined) {
      resolved.elevator = msg.elevator;
    }
    else {
      resolved.elevator = ''
    }

    return resolved;
    }
};

class ElevatorServiceMessageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorServiceMessageResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorServiceMessageResponse
    let len;
    let data = new ElevatorServiceMessageResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'amr_description/ElevatorServiceMessageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success      # task reached
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ElevatorServiceMessageResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ElevatorServiceMessageRequest,
  Response: ElevatorServiceMessageResponse,
  md5sum() { return '0ac04e9a8dcf75f07af625da2a4fd966'; },
  datatype() { return 'amr_description/ElevatorServiceMessage'; }
};
