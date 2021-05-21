#include <ros/ros.h>
#include <sound_play/SoundRequest.h>



int main(int argc, char** argv)
{
    ros::init(argc, argv, "speak_node");
    ros::NodeHandle n;
    ros::Publisher tts_pub= n.advertise<sound_play::SoundRequest>("/robotsound", 20);
    ros::Rate r(0.5);
    char yuyin[4][100] = {"one","two","three","four"};

    while(n.ok())
    {
        sound_play::SoundRequest sp;
        sp.sound = sound_play::SoundRequest::SAY;
        sp.command = sound_play::SoundRequest::PLAY_ONCE;
        sp.volume = 1.0;
        //r.sleep();
        for(int i = 0;i<=3;i++)
        {
            sp.arg =yuyin[i];
            tts_pub.publish(sp);
            r.sleep();
        }


    }
    return 0;
}