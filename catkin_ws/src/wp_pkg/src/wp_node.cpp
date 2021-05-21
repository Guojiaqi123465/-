#include <ros/ros.h>
#include <string>

#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

#include <waterplus_map_tools/Waypoint.h>
#include <waterplus_map_tools/GetWaypointByName.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv)
{
    ros::init(argc, argv, "wp_node");
    ros::NodeHandle nh;
    ros::ServiceClient cliGetWPName =
    nh.serviceClient<waterplus_map_tools::GetWaypointByName>("/waterplus/get_waypoint_name");

    waterplus_map_tools::GetWaypointByName srvName;
    srvName.request.name = "4";  //寻找的航点名称

    if (cliGetWPName.call(srvName))
    {
        std::string name = srvName.response.name;
        float x = srvName.response.pose.position.x;
        float y = srvName.response.pose.position.y;
        ROS_INFO("Waypoint: name = %s (%.2f,%.2f)", name.c_str(),x,y);
    }
    else
    {
        ROS_ERROR("Failed to call service get_waypoint_name");
    }

    MoveBaseClient ac("move_base", true);
    while(!ac.waitForServer(ros::Duration(5.0)))
    {
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();
    goal.target_pose.pose = srvName.response.pose;

    ac.sendGoal(goal);
    ac.waitForResult();

    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    {
        ROS_INFO("Arrived!");
    }
}