#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>

ros::Publisher vel_pub;

void lidarCallback(const sensor_msgs::LaserScan::ConstPtr& scan)
{
    int nNum = scan->ranges.size();
    int nMid = nNum/2;
    float fMidDist = scan->ranges[nMid];

    ROS_INFO("Point[%d] = %f", nMid, fMidDist);
    geometry_msgs::Twist vel_cmd;

    if(fMidDist > 1.0f)
    {
        vel_cmd.linear.x = 0.05;
    }
    else
    {
        vel_cmd.angular.z = 0.1;
    }

    vel_pub.publish(vel_cmd);
}

int main(int argc, char** argv)
{
    ros::init(argc,argv,"behavior_node");
    ROS_INFO("behavior_node start!");
    ros::NodeHandle nh;

    ros::Subscriber lidar_sub = nh.subscribe("/scan", 10, &lidarCallback);
    vel_pub = nh.advertise<geometry_msgs::Twist>("/cmd_vel",10);
    
    ros::spin();
}