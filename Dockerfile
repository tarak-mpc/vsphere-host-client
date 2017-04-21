FROM nimmis/java-centos:oracle-7-jre

MAINTAINER tmpc <tarak.mp@gmail.com>

RUN yum install -y pigz pv tar wget curl && \
yum clean all

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Copy needed files
COPY vsphere-host-client/ ./

# Expose port
EXPOSE 8080

# Start the clinet
#ENTRYPOINT ["/root/start.sh"]

# Define default command.
CMD ["./start.sh"]
