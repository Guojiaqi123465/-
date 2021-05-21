#include <ros/ros.h>
#include <std_msgs/String.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

static ros::Publisher result_pub;

void APlayCB(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("[aplay_server] start play %s",msg->data.c_str());
    std::stringstream ss;
    ss << "aplay -q " << msg->data;
    system(ss.str().c_str());

    ROS_INFO("[aplay_server] end of stream");
    std_msgs::String result_msg;
    result_msg.data = "done";
    result_pub.publish(result_msg);
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "aplay_server");

    ros::NodeHandle n;
    ros::Subscriber aplay_sub = n.subscribe("/aplay_filename", 10 , APlayCB);
    result_pub = n.advertise<std_msgs::String>("/aplay_result", 10);

    ros::spin();
    
    return 0;
}
