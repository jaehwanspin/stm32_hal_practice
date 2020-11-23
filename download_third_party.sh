#!/bin/bash

mkdir -p third_party

# ETL
if [ ! -f third_party/etl ]
then
wget -cO - https://github.com/ETLCPP/etl/archive/19.1.0.tar.gz > third_party/etl.tar.gz
mkdir -p ./third_party/etl
tar -zxvf ./third_party/etl.tar.gz -C ./third_party/etl --strip-components=1
rm ./third_party/etl.tar.gz
echo -e "#ifndef __ETL_PROFILE_H__\n#define __ETL_PROFILE_H__\n#define ETL_THROW_EXCEPTIONS\n#define ETL_VERBOSE_ERRORS\n#define ETL_CHECK_PUSH_POP\n#define ETL_TARGET_DEVICE_ARM\n#endif" > third_party/etl/include/etl/etl_profile.h
fi
