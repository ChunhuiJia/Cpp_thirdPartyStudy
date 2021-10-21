#include <ctime>
#include <fstream>
#include <google/protobuf/util/time_util.h>
#include <iostream>
#include <string>

#include "addressbook.pb.h"

using namespace std;
using google::protobuf::util::TimeUtil;

// 功能：通过用户输入来填充Person message内容
void PromptForAddress(turtorial::Person *person)
{
    cout << "Enter person ID number: ";
    int id;
    cin >> id;
    person->set_id(id);
    cin.ignore(256, '\n');

    cout << "Enter name: ";
    getline(cin, *person->mutable_name());

    cout << "Enter email address (blank for none): ";
    string email;
    getline(cin, email);
    if (!email.empty())
    {
        person->set_email(email);
    }

    while (true)
    {
        cout << "Enter a phone number (or leave blank to finish): ";
        string number;
        getline(cin, number);
        if (number.empty())
        {
            break;
        }

        turtorial::Person::PhoneNumber *phone_number = person->add_phones();
        phone_number->set_number(number);

        cout << "Is this a mobile , home,or work phone? ";
        string type;
        getline(cin, type);
        if (type == "mobile")
        {
            phone_number->set_type(turtorial::Person::MOBILE);
        }
        else if (type == "home")
        {
            phone_number->set_type(turtorial::Person::HOME);
        }
        else if (type == "work")
        {
            phone_number->set_type(turtorial::Person::WORK);
        }
        else
        {
            cout << "Unknown phone type, Using default. " << endl;
        }
    }
    *person->mutable_last_updated() = TimeUtil::SecondsToTimestamp(time(NULL));
}

int main(int argc, char* argv[])
{
    GOOGLE_PROTOBUF_VERIFY_VERSION;  //验证我们链接的库版本是否与我们编译的头文件版本兼容。

    if(argc !=2)
    {
        cerr << "Usage: " << argv[0] << " ADDRESS_BOOK_FILE" << endl;
        return -1;
    }

    turtorial::AddressBook address_book;
    {
        // 读取现存的address book
        fstream input(argv[1], ios::in | ios::binary);
        if(!input)
        {
            cout << argv[1] << "; File not found. Creating a new file." << endl;
        }
        else if(!address_book.ParseFromIstream(&input))
        {
            cerr << "Failed to parse address book." << endl;
            return -1;
        }
    }

    //添加一个address
    PromptForAddress(address_book.add_people());

    {
        // 写入新address book到硬盘上
        fstream output(argv[1],ios::out | ios::trunc | ios::binary);
        if(!address_book.SerializeToOstream(&output))
        {
            cerr << "Failed to write address book." << endl;
            return -1;
        }
    }

    //可选的，删除libprotobuf分配的所有全局对象
    google::protobuf::ShutdownProtobufLibrary();

    return 0;
}