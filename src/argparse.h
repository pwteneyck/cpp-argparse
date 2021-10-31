#pragma once

#include <string>

char* getCmdValue(char** begin, char** end, const std::string& flag); 

bool getCmdFlag(char** begin, char** end, const std::string& flag);
