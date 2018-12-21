FROM centos:6

# yum install
RUN yum -y update && \
    yum -y install gcc make cmake && \
    yum clean all

#install gcc 5.3 
COPY _install_gcc-5.3.0 /opt/_install_gcc-5.3.0
COPY env_gcc-5.3.0.sh /opt/

#set env
ENV compiler_dir=/opt/_install_gcc-5.3.0/usr/local
ENV CC="$compiler_dir/bin/gcc"
ENV CXX="$compiler_dir/bin/g++"
ENV PATH=$compiler_dir/bin:$PATH
ENV LD_LIBRARY_PATH=$compiler_dir/lib64:$LD_LIBRARY_PATH



 