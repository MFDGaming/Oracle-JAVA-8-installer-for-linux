#!/bin/bash

# input validator and help

case "$1" in
	arm)
#!/bin/bash
apt update && apt install wget -y && wget "https://github.com/MFDGaming/Oracle-JAVA-8-installer-for-linux/raw/master/java_arm.tar.gz" && mkdir "/opt/java" && tar -C /opt/java -zxvf "java_arm.tar.gz" && rm "java_arm.tar.gz" && update-alternatives --install /usr/bin/java java /opt/java/jre/bin/java 2000 && echo /opt/java/jre/lib/arm/jli | tee -a /etc/ld.so.conf && ldconfig
	    ;;
	arm64)

            ;;
	x86)

	    ;;
	x64)
apt update && apt install wget -y && wget "https://github.com/MFDGaming/Oracle-JAVA-8-installer-for-linux/raw/master/java_x64.tar.gz" && mkdir "/opt/java" && tar -C /opt/java -zxvf "java_x64.tar.gz" && rm "java_x64.tar.gz" && update-alternatives --install /usr/bin/java java /opt/java/jre/bin/java 2000 && echo /opt/java/jre/lib/arm/jli | tee -a /etc/ld.so.conf && ldconfig
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
