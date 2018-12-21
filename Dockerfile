FROM centos

RUN yum -y update && \
    yum -y install make gcc gcc-c++ wget && \
    yum -y clean all && 
    cd ~ && 
    wget https://github.com/Kitware/CMake/releases/download/v3.13.2/cmake-3.13.2-Linux-x86_64.sh && 
    chmod +x cmake-3.13.2-Linux-x86_64.sh &&
    ./cmake-3.13.2-Linux-x86_64.sh --prefix=/usr --skip-license && 
    rm -f cmake-3.13.2-Linux-x86_64.sh
 
VOLUME /root/volume
