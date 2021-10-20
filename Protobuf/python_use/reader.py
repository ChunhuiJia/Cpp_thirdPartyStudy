from my.helloworld_pb2 import helloworld

def main():
    hw = helloworld();
    with open("mybuffer.io","rb") as f:
        hw.ParseFromString(f.read())
        print(hw.id)
        print(hw.str)
        print(hw.wow)
        
if __name__=="__main__":
    main()