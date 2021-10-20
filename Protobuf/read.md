# Google Protobuf --python

## 参考资料：

[Google Protobuf简明教程——简书](https://www.jianshu.com/p/b723053a86a6)

[google protobuf官方文档](https://developers.google.com/protocol-buffers/docs/proto)

[protobuf github](https://github.com/protocolbuffers/protobuf)

## 安装：

python：

```csharp
pip install protobuf    # 安装protobuf库
sudo apt-get install protobuf-compiler  # 安装protobuf编译器
```

## 使用方法：

使用Protobuf有如下几个步骤：

1. 定义消息
2. 初始化消息以及存储传输消息
3. 读取消息并解析

下面以一个实际的例子来说明如何使用Protobuf，先展示出项目的实际目录结构：

```
|----------my        #此文件夹通过protoc命令编译生成的
|        |-----------helloworld_pb2.py   #此文件夹通过protoc命令编译生成的
|        |-----------helloworld_pb2.pyc
|        |-----------__init__.py   #是python包的标示，手动在这个包my下面，新建一个__init__.py空文件，不加就找不到这个my这个包
|----------mybuffer.io
|----------my.helloworld.proto  #此文件要通过protoc命令进行编译
|----------reader.py
|----------writer.py
```

### 定义消息

Protobuf的消息结构是通过一种叫做**Protocol Buffer Language**的语言进行定义和描述的，实际上**Protocol Buffer Language**分为两个版本，版本2和版本3，默认不声明的情况下使用的是版本2，下面以版本2为来举个栗子, 假设我们定义了文件名为my.helloworld.proto的文件，如下：

```go
syntax = "proto2";    #指定proto的版本为2
package my;     # 通过protoc编译后的文件夹为my
message helloworld
{
    required int32 id = 1;
    required string str = 2;
    optional int32 wow = 3;
}
```

然后我们需要在命令行中使用protoc（proto+compile）进行编译

```undefined
protoc -I=./ --python_out=./ ./my.helloworld.proto
# 通过这个命令会在本级目录生成/my/helloworld_pb2.py

在my文件加中新建一个"__init__.py”空文件（是python包的标识），这样才能运行python文件的时候找到这个包
```



- I:是设定源路径，在本级目录下则指定的源路径为"./"

- --python_out:用于设定编译后的输出结果路径，当前目录为"./"   如果使用其他语言请使用对应语言的option
- 最后一个参数是你要编译的proto文件

### 消息初始化和存储传输

我们通过writer.py来初始化消息并存储为文件，代码如下：

```python
from my.helloworld_pb2 import helloworld

def main():
    hw = helloworld()
    hw.id = 123
    hw.str = "eric"
    print(hw)
    
    with open("mybuffer.io","wb") as f:
        f.write(hw.SerializeToString())
        
if __name__=="__main__":
    main()
```

执行writer.py之后就会将序列化的结果存储在文件mybuffer.io中，

```
python3 writer.py   #用Python2不行
```

然后看下如何读取

### 消息读取与解析

我们通过reader.py来读取和解析消息，代码如下：

```python
from my.helloworld_pb2 import helloworld

def main():
    hw = helloworld();
    with open("mybuffer.io","rb") as f:
        hw.ParseFromString(f.read())
        print(hw.id)
        print(hw.str)
        
if __name__=="__main__":
    main()
```



## 常见问题：

问题1：[protobuf 编译proto文件报错：No syntax specified for the proto file](https://blog.csdn.net/guangyacyb/article/details/104051903):

在proto文件最开头加上：

<code> syntax="proto2;"</code>

或者

<code> syntax="proto3;"</code>

根据用的proto版本添加

# Google Protobuf --c++

##  参考资料：

[google protobuf (c++) 学习--csdn](https://blog.csdn.net/u013457167/article/details/91889611)

