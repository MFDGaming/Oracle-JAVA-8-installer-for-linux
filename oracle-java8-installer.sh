#!/bin/bash

# input validator and help

case "$1" in
	arm)
#!/bin/bash
apt update && apt install wget -y && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -O "java.tar.gz" "https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-arm32-vfp-hflt.tar.gz" && tar -C /opt -zxvf "java.tar.gz" && rm "java.tar.gz" && update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_201/jre/bin/java 2000 && echo /opt/jdk1.8.0_201/jre/lib/arm/jli | tee -a /etc/ld.so.conf && ldconfig
	    ;;
	arm64)

            ;;
	x86)

	    ;;
	x64)

            ;;
	*)
	    echo $"
 ________________________
|                        |
|  Select architecture:  |
|  arm                   |
|  arm64                 |
|  x86                   |
|  x64                   |
|________________________|
"
	    exit 2
esac
