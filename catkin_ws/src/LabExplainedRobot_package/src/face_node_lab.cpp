#include <ros/ros.h>
#include <std_msgs/String.h>
#include <wpb_home_behaviors/Rect.h>
#include <wpb_home_behaviors/Coord.h>

#include <LabExplainedRobot_package/face_detect.h> 

LabExplainedRobot_package::face_detect  face_detect;
int nNumFace;

void FaceRectCB(const wpb_home_behaviors::Rect::ConstPtr &msg)
{
    nNumFace = msg->name.size();
    ROS_WARN("[FaceRectCB] num = %d",nNumFace);

    if(nNumFace > 0)
    {
        for(int i=0 ; i<nNumFace ; i++)
        {
            ROS_WARN("[FaceRectCB] %s -(%d , %d , %d , %d)",msg->name[i].c_str(),msg->top[i],msg->bottom[i],msg->left[i],msg->right[i]);
        }
    }
}
void FaceCoordCB(const wpb_home_behaviors::Coord::ConstPtr &msg)
{
    nNumFace = msg->name.size();
    ROS_WARN("[FaceCoordCB] num = %d",nNumFace);


    if(nNumFace > 0)
    {
        for(int i=0 ; i<nNumFace ; i++)
        {
            ROS_WARN("[FaceCoordCB] %s -(%.2f , %.2f , %.2f)",msg->name[i].c_str(),msg->x[i],msg->y[i],msg->z[i]);
        }
    }
}
int main(int argc, char** argv)
{
    ros::init(argc, argv, "face_node_lab");
    ROS_WARN("face_node start!");
    ros::NodeHandle n;
    ros::Subscriber face_2d_sub = n.subscribe("/wpb_home/face_detect_2d", 1,
    FaceRectCB);
    ros::Subscriber face_3d_sub = n.subscribe("/wpb_home/face_detect_3d", 1,
    FaceCoordCB);

    ros::Publisher face_detect_pub = n.advertise<LabExplainedRobot_package::face_detect>("/face_detect",1);
    face_detect.face_num = nNumFace;
    face_detect_pub.publish(face_detect);

    ros::spin();
    return 0;
}
