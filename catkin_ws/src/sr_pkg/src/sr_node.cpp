#include <ros/ros.h>
#include <std_msgs/String.h>

#include<stdio.h>
#define maxlen 30
int loop_flag = 1; 
static ros::Publisher spk_pub;
static std_msgs::String strSpeak;
static std::string strTonePlay;
char waypoint[6][100] = {"start","Z 501","Z 502","Z 503","Z 506","Z 507"};
 char yuyin[] = "即将前往";
char yuyin1[] = "即将前往";
int lab_num = 5;
void CruiseEX()
{
    ros::Rate r(0.2);
    char yuyin[3][100] = {"这是第一实验室，功能是省略","这是第二实验室，功能是省略","这是第三实验室，功能是省略"};


    for(int i=0; i<3;i++)
    {
         strSpeak.data = yuyin[i];
        spk_pub.publish(strSpeak);
        r.sleep();
    }

}


void KeywordCB(const std_msgs::String::ConstPtr & msg)
{
    printf("进入了子函数\n");
    ros::Rate r(0.2);
    printf("[KeywordCB] - %s ",msg->data.c_str());
    int nFindIndex = 0;
    int nFindIndex1 = 0;
        int nFindIndex2 = 0;
    nFindIndex = msg->data.find("开始");
    // if( nFindIndex >= 0 )
    // {
    //     strSpeak.data = "现在开始巡航讲解";
    //     spk_pub.publish(strSpeak);
    //     r.sleep();
    //     //CruiseEX();
    //     // while(1)
    //     // {
    //     //     printf("停止在子函数\n");
    //     //     sleep(2);
    //     // }
    // }
    // if( msg->data.find("巡航讲解")) 
    //     strSpeak.data = "现在开始巡航讲解";
    // else if(msg->data.find("定点讲解") ) 
    //    strSpeak.data = "现在开始定点讲解";
    // else
    //     strSpeak.data = "为指定语音";
    // spk_pub.publish(strSpeak);
    // r.sleep();

    // nFindIndex = msg->data.find("巡航讲解");
    // nFindIndex1 = msg->data.find("定点讲解");
    //     nFindIndex2 = msg->data.find("Z 501");
    // if( nFindIndex >= 0 )
    //     strSpeak.data = "现在开始巡航讲解";
    // else if( nFindIndex1 >= 0 )
    //     strSpeak.data = "现在开始定点讲解";
    // else if( nFindIndex2 >= 0 )
    //     strSpeak.data = "即将前往Z501";
    // else
    //     strSpeak.data = "未指定语言";

    for(int i = 0; i < lab_num;i++)
        {
            nFindIndex1 = msg->data.find(waypoint[i+1]);
            if(nFindIndex1 >= 0)
            {
                strcpy(yuyin1,"即将前往");
                strcat(yuyin1,waypoint[i+1]);
                strSpeak.data=yuyin1;
                    spk_pub.publish(strSpeak);
                printf("播放了%s",yuyin1);
                r.sleep();
            }    
        }

}

int main(int argc, char** argv)
{

    ros::init(argc, argv, "sr_node");
    ros::NodeHandle n;
    ros::Rate r(0.2);
    ros::Rate loop_rate(10);
    //ros::Subscriber sub_sr = n.subscribe("/xfyun/iat", 10, KeywordCB);
    //spk_pub = n.advertise<std_msgs::String>("/xfyun/tts", 10);
    sleep(1);
    strSpeak.data = "开始";
    spk_pub.publish(strSpeak);
    sleep(1);


    // FILE *fp=fopen("/home/robot/catkin_ws/src/sr_pkg/introduction/Z507.txt","r"); 
    // //检测文件是否打开成功；
    // if(!fp){
    //    printf("打开失败！\n");
    //    //return -1; //返回异常
    // }
    // char introduction[10000];
    //  while(!feof(fp)) //feof（）检测一个文件是否结束，即到达文件尾，若结束，则返回非0值，否则返回0
    // {
    //    fscanf(fp,"%s\n",introduciton); 
    // }
  spk_pub = n.advertise<std_msgs::String>("/xfyun/tts", 10);

//   while(1)
//   {
    char yuyin[] = "请在提示音后回答";
    strSpeak.data = yuyin;
    spk_pub.publish(strSpeak);
    int len  = strlen(yuyin);
    sleep(0.4*(len)/3);
    ros::Subscriber sub_sr = n.subscribe("/xfyun/iat", 10, KeywordCB);
//     while (loop_flag <= 50)
//     {
//         /*...TODO...*/ 
//         printf("循环了一次\n");
//         ros::spinOnce();
//         loop_rate.sleep();
//         loop_flag++;
//     }
//     loop_flag = 0;
//      printf("跳出循环\n");
//   }

///————————————————————————————读取文字获得语音
    // fscanf(fp,"%s",introduction);
    // printf("%s\n",introduction);   
    // fclose(fp);

    // char ceshi[10000];
    // strcpy(ceshi, introduction);
    // //ceshi = introduction;
    // int len  = strlen(ceshi);
    // printf("%d\n",len);
    // printf("%f\n",0.4*(len-1)/3);
    // strSpeak.data =ceshi;
    // spk_pub.publish(strSpeak);
    // sleep(0.4*(len)/3);
//————————————————————————————————播放语音
//     char interpretation_voice_pathB[] = "/home/robot/catkin_ws/src/LabExplainedRobot_package/introduction_wav/Z501.wav";

//     char const* home_dir = getenv("HOME");
//     std::string strHomeDir = home_dir;
//    // strTonePlay = "aplay -q " + strHomeDir + "/Z501.wav";
//     //strTonePlay = "aplay -q " +interpretation_voice_pathB;

// 	std::stringstream ss;
// 	//ss << strTonePlay; //16khz,单声道
//      ss << "aplay -q " << interpretation_voice_pathB;
// 	system(ss.str().c_str());
//     ROS_WARN("播放完成");

    //————————————————————————————测试播放截至符
    // strSpeak.data = "现在开始巡航讲解";
    // spk_pub.publish(strSpeak);
    // sleep(3.2);
    // strSpeak.data = "播放完成";
    // spk_pub.publish(strSpeak);
    ///////////////////////////////////////////////////////////////////////
    //  char ceshi[100] ={ "一二三"};
    //  int len  = strlen(ceshi);
    // printf("%d\n",len);
    // printf("%f\n",0.4*(len-1)/3);
    // strSpeak.data =ceshi;
    // spk_pub.publish(strSpeak);
    // sleep(0.4*(len)/3);


    // strSpeak.data = "播放完成";
    // spk_pub.publish(strSpeak);
    // sleep(1.6);

    // char ceshi1[] = {"一二三四"};
    // len  = strlen(ceshi1);
    // strSpeak.data =ceshi1;
    // spk_pub.publish(strSpeak);
    // sleep(0.4*(len)/3);
    // printf("%d\n",len);
    //   printf("%f\n",0.4*(len-1)/3);

    // strSpeak.data = "播放完成";
    // spk_pub.publish(strSpeak);
    // sleep(1.6);

    // char ceshi2[] = {"一二三四五"};
    //  len  = strlen(ceshi2);
    // strSpeak.data =ceshi2;
    // spk_pub.publish(strSpeak);
    // sleep(0.4*(len)/3);
    // printf("%d\n",len);
    //   printf("%f\n",0.4*(len-1)/3);

    //  strSpeak.data = "播放完成";
    // spk_pub.publish(strSpeak);
    // sleep(1.6);
    //////////////////////////////////////////////////////////////////////////
    // sleep(3.2);
    // printf("%d\n",len);
    // printf("播放完成 ...\n");
    //CruiseEX();

    ros::spin();
    return 0;
}