//
//  main.cpp
//  Replace the ADD_DATE attribute of local_file with github_file's.
//
//  Created by Junqiao Wang on 7/25/15.
//  Copyright © 2015 Junqiao Wang. All rights reserved.
//

#include <iostream>
#include <map>
#include <string>
#include <stdio.h>
#include <fstream>


using namespace std;


int main(int argc, const char * argv[]) {
    if (argc < 4) {
        printf("usage: command github_file local_file output_file\n");
        exit(0);
    }
    printf("Replace the ADD_DATE attribute of local_file with github_file's.\n");
    map<string, string> mp;
    string line;
    ifstream in(argv[1], ifstream::in);
    while (getline(in, line)) {
        int s = line.find_last_of("ADD_DATE=");
        if (s == string::npos) {
            continue;
        }
        int t = s;
        while (line[t] != ' ') t ++;
        string tmp = line.substr(0, s + 1) + line.substr(t);
        mp[tmp] = line;
    }
    in.close();
    
    in.open(argv[2]);
    ofstream out(argv[3], ofstream::out);
    while (getline(in, line)) {
        int s = line.find_last_of("ADD_DATE=");
        if (s == string::npos) {
            out << line << endl;
            continue;
        }
        int t = s;
        while (line[t] != ' ') t ++;
        string tmp = line.substr(0, s + 1) + line.substr(t);
        if (mp.find(tmp) != mp.end()) {
            out << mp[tmp] << endl;
        } else {
            out << line << endl;
        }
    }
    in.close();
    out.close();
}

