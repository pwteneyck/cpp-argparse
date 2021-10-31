#include <iostream>

#include "argparse.h"

int main(int argc, char* argv[]) {
    // pass in a name to say hello to with the '-n' flag
    char* name = getCmdValue(argv, argv+argc, "-n");

    // standalone boolean flags work too
    bool excited = getCmdFlag(argv, argv+argc, "-e");

    if (excited) {
        std::cout << "Hello " << name << "!!!\n";
    } else {
        std::cout << "Hello " << name << "\n";
    }
    
    return 0;
}
