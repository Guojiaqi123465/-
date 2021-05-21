//ROS机器人基本头文件
#include <ros/ros.h>
#include <string>
//运动控制与导航头文件
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
//地图工具waterplus插件头文件
#include <waterplus_map_tools/Waypoint.h>
#include <waterplus_map_tools/GetWaypointByName.h>
//语音部分使用的头文件
#include <std_msgs/String.h>
//自定义的人脸检测标志符
#include <LabExplainedRobot_package/face_detect.h> 
//字符串操作头文件
#include<stdio.h>
//语音播报常用变量
static ros::Publisher spk_pub;
static std_msgs::String strSpeak;
//导航常用变量
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
waterplus_map_tools::GetWaypointByName srvName;
//获得实验室介绍文字参数准备
int lab_num = 5;
char waypoint[6][100] = {"start","Z 501","Z 502","Z 503","Z 506","Z 507"};
char voice_name[6][100] = {"start","Z501","Z502","Z503","Z506","Z507"};
char interpretation[5][10000];
char interpretation_pathA[] = "/home/robot/catkin_ws/src/LabExplainedRobot_package/introduction/";
char interpretation_pathB[]= "/home/robot/catkin_ws/src/LabExplainedRobot_package/introduction/";
int interpretation_len[5];
//统一回调函数，方便程序设计，增加逻辑深度
int callback_flag = 0;
char callback_yuyin[2][100] = {"请在提示音后回答","请选择前往Z501，Z502，Z503，Z506，Z507,或者结束"};
//音频播放
char interpretation_voice_pathA[] = "/home/robot/catkin_ws/src/LabExplainedRobot_package/introduction_wav/";
char interpretation_voice_pathB[] = "/home/robot/catkin_ws/src/LabExplainedRobot_package/introduction_wav/";
//函数声明
void Face_detect(const LabExplainedRobot_package::face_detect::ConstPtr &msg);
void cruise_lab();
void location_lab();
void namereaction(const std_msgs::String::ConstPtr & msg);
void pointNavigation(char point[]);
void callback(const std_msgs::String::ConstPtr & msg);
void notice_voice();
void point_reset();
void labinterpretation(char point[]);
//函数定义

void Face_detect(const LabExplainedRobot_package::face_detect::ConstPtr &msg)
{
    if (msg->face_num >0)
    { 
    char yuyin[]="你好，我是瓦利，为您带来实验室讲解服务；请您选择巡航讲解或者定点讲解";
    strSpeak.data = yuyin;
    spk_pub.publish(strSpeak);
    int len  = strlen(yuyin);
    sleep(0.4*(len)/3);
    }

}

void cruise_lab()
{
    ros::param::set("iat_bCue",false);

    ros::Rate r(0.1);
    for(int i = 0; i < lab_num; i++)
    {
         pointNavigation(waypoint[i+1]);  
         labinterpretation(voice_name[i+1]);
    }
    
    strSpeak.data = "巡航讲解已经完成，即将返回起点等待指令";
    spk_pub.publish(strSpeak);
    sleep(0.4*18);
    point_reset();
}

void location_lab()
{
    callback_flag = 2;
    notice_voice();
}

void namereaction(const std_msgs::String::ConstPtr & msg)
{
    printf("[KeywordCB] - %s ",msg->data.c_str());
    int nFindIndex = 0;
    nFindIndex = msg->data.find("你好");
    if( nFindIndex >= 0 )                           
    {
        char yuyin[]="你好，我是瓦利，为您带来实验室讲解服务；请您选择巡航讲解或者定点讲解";
        strSpeak.data = yuyin;
        spk_pub.publish(strSpeak);
        int len  = strlen(yuyin);
        sleep(0.3*(len)/3);

        callback_flag = 1;
        notice_voice();
    }
}

void pointNavigation(char point[])
{
    ros::param::set("iat_bCue",false);
    ros::NodeHandle nh;
    ros::ServiceClient cliGetWPName =
    nh.serviceClient<waterplus_map_tools::GetWaypointByName>("/waterplus/get_waypoint_name");  
    srvName.request.name = point;  //寻找的航点名称

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

void callback(const std_msgs::String::ConstPtr & msg)
{
    if(callback_flag == 1)
    {
    int nFindIndex = 0;
    int nFindIndex1 = 0;
    nFindIndex = msg->data.find("巡航讲解");
    nFindIndex1 = msg->data.find("定点讲解");
    if( nFindIndex >= 0 )
        cruise_lab();
    else if( nFindIndex1 >= 0 )
        location_lab();
    else
        {
            char yuyin[] = "请选择巡航讲解或者定点讲解";
            strSpeak.data = yuyin;
            spk_pub.publish(strSpeak);
            int len  = strlen(yuyin);
            sleep(0.4*(len)/3);
            //callback_flag = 1;//应该不用
            notice_voice();
        }
    }
    if(callback_flag == 2)
    {
        int nFindIndex = 0;
        int nFindIndex1 = 0;
        nFindIndex = msg->data.find("结束");
        
        if(nFindIndex >= 0)
            point_reset();
        for(int i = 0; i < lab_num;i++)
        {
            nFindIndex1 = msg->data.find(waypoint[i+1]);
            if(nFindIndex1 >= 0)
            {
                 char yuyin[] = "请跟我来";
                strSpeak.data = yuyin;
                spk_pub.publish(strSpeak);
                int len  = strlen(yuyin);
                sleep(0.4*(len)/3);
                
                pointNavigation(waypoint[i+1]);  
                labinterpretation(voice_name[i+1]);
            }    
        }
        //callback_flag = 2; 因该不用，其他地方都没有改
        notice_voice();
    }
}

void notice_voice()
{
    ros::NodeHandle nh;
    ros::Rate noticespin_loop(10);
    int noticespin_flag = 0;
    while(ros::ok())
    {
        ros::param::set("iat_bCue",true);
        char yuyin[100];
        strcpy(yuyin,callback_yuyin[callback_flag-1]);
        strSpeak.data = yuyin;
        spk_pub.publish(strSpeak);
        int len  = strlen(yuyin);
        sleep(0.4*(len)/3);
        ros::Subscriber sub_namereaction = nh.subscribe("/xfyun/iat", 1, callback);
        while(noticespin_flag < 200)
        {
            ros::spinOnce();
            noticespin_loop.sleep();
            noticespin_flag++;
        }
        noticespin_flag = 0;
    }
}

void point_reset()
{
    ros::NodeHandle nh;
    strSpeak.data = "准备回到起点迎接参观者";
    spk_pub.publish(strSpeak);
    sleep(0.4*8);
    pointNavigation(waypoint[0]);
    strSpeak.data = "已经到达起点";
    spk_pub.publish(strSpeak);
    sleep(0.4*7);
    //ros::param::set("iat_bCue",true);    //控制语音检测是否播放提示音
    ros::Subscriber sub_sr = nh.subscribe("/xfyun/iat", 1, namereaction);
    ros::spin();
}

void labinterpretation(char point[])
{
    strcpy(interpretation_voice_pathB,interpretation_voice_pathA);
    strcat(interpretation_voice_pathB,point);
    strcat(interpretation_voice_pathB,".wav");

    ROS_INFO("[aplay_server] start play %s",interpretation_voice_pathB);
    std::stringstream ss;
    ss << "aplay -q " << interpretation_voice_pathB;
    system(ss.str().c_str());

    ROS_INFO("播放完成");

}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "LabExplainedRobot_main_node");
    ros::NodeHandle n;
     
    //获得实验室介绍文字
    // for(int i = 0; i < lab_num; i ++)
    // {   
    //     strcpy(interpretation_pathB,interpretation_pathA);
    //     strcat(interpretation_pathB,waypoint[i+1]);

    //     FILE *fp=fopen(interpretation_pathB,"r"); 
    //     if(!fp)
    //     {
    //         printf("打开失败！\n");
    //     //return -1; //返回异常
    //     }
    //     fscanf(fp,"%s",interpretation[i]);
    //     printf("%s\n",interpretation[i]);   
    //     interpretation_len[i]  = strlen(interpretation[i]);
    //     fclose(fp);
    // }
    ros::param::set("iat_bCue",false);
    spk_pub = n.advertise<std_msgs::String>("/xfyun/tts", 10);
    sleep(1);   //语音启动有个延时，不加入等待的话第一次输入的语音将不能正确播放。

    point_reset();

    ros::spin();
    return 0;
}