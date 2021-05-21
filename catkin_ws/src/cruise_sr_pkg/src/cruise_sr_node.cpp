#include <ros/ros.h>
#include <string>

#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

#include <waterplus_map_tools/Waypoint.h>
#include <waterplus_map_tools/GetWaypointByName.h>
//语音识别部分
#include <std_msgs/String.h>

static ros::Publisher spk_pub;
static std_msgs::String strSpeak;

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int CruiseEX()
{
    ros::NodeHandle nh;
    ros::ServiceClient cliGetWPName =
    nh.serviceClient<waterplus_map_tools::GetWaypointByName>("/waterplus/get_waypoint_name");
    waterplus_map_tools::GetWaypointByName srvName;

    ros::Rate r(0.1);
    char waypoint[4][100] = {"start","lab1","lab2","lab3"};
    char yuyin[4][100] = {"这里是起点","这是第一实验室，功能是省略","这是第二实验室，功能是省略","这是第三实验室，功能是省略"};

    for(int i = 0; i < 4; i++)
    {
         srvName.request.name = waypoint[i];  //寻找的航点名称

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
            strSpeak.data = yuyin[i];
            spk_pub.publish(strSpeak);
            r.sleep();
            sleep(5);
            //ROS_WARN();
        }

    }
    
}

void KeywordCB(const std_msgs::String::ConstPtr & msg)
{
    ros::Rate r(0.5);
    printf("[KeywordCB] - %s ",msg->data.c_str());
    int nFindIndex = 0;
    nFindIndex = msg->data.find("开始讲解");
    if( nFindIndex >= 0 )                           
    {
        strSpeak.data = "现在开始巡航讲解";
        spk_pub.publish(strSpeak);
        r.sleep();
        CruiseEX();
    }
}

int main(int argc, char** argv)
{

    ros::init(argc, argv, "cruise_sr_node");
    ros::NodeHandle n;
    ros::Subscriber sub_sr = n.subscribe("/xfyun/iat", 10, KeywordCB);
    spk_pub = n.advertise<std_msgs::String>("/xfyun/tts", 10);
    ros::spin();
    return 0;
}