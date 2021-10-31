#include "argparse.h"

#include <algorithm>
#include <string>

char* getCmdValue(char** begin, char** end, const std::string& flag) {
    char** itr = std::find(begin, end, flag);
    if (itr != end && ++itr != end) {
        return *itr;
    }
    return 0;
} 

bool getCmdFlag(char** begin, char** end, const std::string& flag) {
    return std::find(begin, end, flag) != end;
}
