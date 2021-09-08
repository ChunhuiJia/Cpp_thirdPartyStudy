# GLOG学习
## glog的一些常用用法
初始化：```google::InitGoogleLogging(argv[0]);```
释放：```google::ShutdownGoogleLogging();```
初始化和释放搭配使用。
## 常用的一些glog配置（写在代码里的）
```C++
FLAGS_logtostderr = true;  //设置日志消息是否转到标准输出而不是日志文件
FLAGS_alsologtostderr = true; //设置日志消息，除了日志文件之外是否输出到标准输出
FLAGS_colorlogtostderr = true; //设置记录到标准输出的颜色消息（如果终端支持）
FLAGS_log_prefix = true; // 设置日志前缀是否应该添加到每行输出
FLAGS_logbufsecs = 0; // 设置可以缓冲日志的最大秒数，0指实时输出
FLAGS_max_log_size = 10; // 设置最大日志文件大小（以MB为单位），超过会对文件进行分割
FLAGS_stop_logging_if_full_disk = true; //设置是否在磁盘已满时避免日志记录到磁盘
FLAGS_minloglevel = google::GLOG_WARNING; // 设置最小处理日志的级别
```

## 参考资料
[入门学习参考（视频,20mins），[推荐学习]](https://www.bilibili.com/video/BV1Co4y1D7ik?from=search&seid=8164083156192164239&spm_id_from=333.337.0.0)
[glog官方文档(github)](https://github.com/google/glog/)

## Issue
问题1：在ros里面，glog和ROS_INFO是不是类似的作用，ROS_INFO能不能也输出到文件里呢？
答：其实感觉和glog的日志等级有点类似。
ROS中日志被划分成如下级别：
ROS_DEBUG（调试）：只在调试时使用，此类消息不会输出到控制台；
ROS_INFO（信息）：标准消息，一般用于说明系统内正在执行的操作；
ROS_WARN（警告）：提醒一些异常情况，但程序仍然可以执行；
ROS_ERROR（错误）：提示错误信息，此类错误会影响程序运行；
ROS_FATAL（严重错误）：此类错误将阻止节点继续运行；