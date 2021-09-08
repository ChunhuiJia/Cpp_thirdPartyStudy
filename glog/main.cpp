#include <iostream>
#include <glog/logging.h>

int main(int argc, char **argv)
{
    FLAGS_log_dir = "./log";
    google::InitGoogleLogging(argv[0]);
     FLAGS_logtostderr = 1;      //1:output to teminal ,0:output to log files

    LOG(WARNING) << "Hello dsfdddf2s world" << std::endl;
   
    int num_cookies = 11;
    LOG_IF(INFO, num_cookies > 10) << "Got lots of cookies" << std::endl;

    for (int i = 0; i < 30; i++)
    {
        LOG_EVERY_N(INFO, 10) << "Got the " << google::COUNTER << " the cookie" << std::endl;
    }

    DLOG(INFO) << "Found cookies" << std::endl;

    // CHECK_EQ(1, 2) << ": The world must be ending!";
    FLAGS_v = 1;  // print the info of the VLOG  <=FLAGS_v    //自定义的打印等级，通常用于信息很多，需要筛检的信息
    VLOG(1) << "I'm printed when you run the program with --v=1 or higher";
    VLOG(2) << "I'm printed when you run the program with --v=2 or higher";

    google::ShutdownGoogleLogging();
}