#include <ros/ros.h>
#include <std_msgs/String.h>

static ros::Publisher play_pub;

void PlayResultCB(const std_msgs::String::ConstPtr &msg)
{
    ROS_INFO("[PlayResultCB] : %s",msg->data.c_str());
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "aplay_client");

    ros::NodeHandle n;
    play_pub = n.advertise<std_msgs::String>("/aplay_filename", 10);
    ros::Subscriber result_sub = n.subscribe("/aplay_result", 10 , PlayResultCB);
   
    sleep(1);

    ROS_INFO("send filename");
    
    std_msgs::String filename_msg;
    filename_msg.data = "/home/robot/Z501.wav";
    play_pub.publish(filename_msg);

    ros::spin();

    return 0;
}
