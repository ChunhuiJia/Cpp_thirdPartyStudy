在使用gflags时，链接时也依赖pthread的相关的依赖库，
[参考链接（亲测好用）：undefined reference to `pthread_rwlock_wrlock’](https://blog.csdn.net/u012348774/article/details/80558533)
```cmake
# CMakeLists.txt中添加pthread库的方法，亲测好用
find_package(Threads)

add_executable(test_glog main.cpp)
target_link_libraries(test_glog  libgflags.a libglog.a  ${CMAKE_THREAD_LIBS_INIT})
```