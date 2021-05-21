
"use strict";

let GetChargerByName = require('./GetChargerByName.js')
let GetWaypointByName = require('./GetWaypointByName.js')
let GetWaypointByIndex = require('./GetWaypointByIndex.js')
let AddNewWaypoint = require('./AddNewWaypoint.js')
let SaveWaypoints = require('./SaveWaypoints.js')
let GetNumOfWaypoints = require('./GetNumOfWaypoints.js')

module.exports = {
  GetChargerByName: GetChargerByName,
  GetWaypointByName: GetWaypointByName,
  GetWaypointByIndex: GetWaypointByIndex,
  AddNewWaypoint: AddNewWaypoint,
  SaveWaypoints: SaveWaypoints,
  GetNumOfWaypoints: GetNumOfWaypoints,
};
