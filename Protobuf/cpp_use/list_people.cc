#include <fstream>
#include <google/protobuf/util/time_util.h>
#include <iostream>
#include <string>

#include "addressbook.pb.h"

using namespace std;
using google::protobuf::util::TimeUtil;

//在AddressBook里迭代所有的people，并把他们的信息打印出来
void ListPeople(const turtorial::AddressBook &address_book)
{
    for (int i = 0; i < address_book.people_size(); i++)
    {
        const turtorial::Person &person = address_book.people(i);

        cout << "Person ID: " << person.id() << endl;
        cout << "Name: " << person.name() << endl;
        if (person.email() != "")
        {
            cout << "  E-mail address: " << person.email() << endl;
        }

        for (int j = 0; j < person.phones_size(); j++)
        {
            const turtorial::Person::PhoneNumber &phone_number = person.phones(j);

            switch (phone_number.type())
            {
            case turtorial::Person::MOBILE:
                cout << "Mobile phone #: ";
                break;
            case turtorial::Person::HOME:
                cout << " Home phone #: ";
                break;
            case turtorial::Person::WORK:
                cout << "Work phone #: ";
                break;
            default:
                cout << "Unkown phone #: ";
                break;
            }
            cout << phone_number.number() << endl;
        }
        if (person.has_last_updated())
        {
            cout << "Updated: " << TimeUtil::ToString(person.last_updated()) << endl;
        }
    }
}

// Main函数：从一个文件里读取整个address book，并把里面所有的信息打印出来
int main(int argc, char *argv[])
{
    GOOGLE_PROTOBUF_VERIFY_VERSION; //验证我们链接的库版本是否与我们编译的头文件版本兼容。

    if (argc != 2)
    {
        cerr << "Usage: " << argv[0] << " ADDRESS_BOOK_FILE" << endl;
        return -1;
    }

    turtorial::AddressBook address_book;
    {
        //读取该address book。
        fstream input(argv[1], ios::in | ios::binary);
        if (!address_book.ParseFromIstream(&input))
        {
            cerr << "Failed to parse address book." << endl;
            return -1;
        }
    }

    ListPeople(address_book);

    //可选的，删除libprotobuf分配的所有全局对象
    google::protobuf::ShutdownProtobufLibrary();

    return 0;
}