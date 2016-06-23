FROM centos
MAINTAINER Scott Pecnik
EXPOSE 8080 8443 8005

COPY agent.installer.linux.gtk.x86_64_1.8.4000.20151125_0201 /tmp/agent.installer.linux.gtk.x86_64_1.8.4000.20151125_0201/
COPY UCR-linux-x86_64 /tmp/UCR-linux-x86_64/
COPY response.xml /tmp/
COPY start.sh /

RUN /tmp/agent.installer.linux.gtk.x86_64_1.8.4000.20151125_0201/installc -log logfile.txt -acceptLicense
RUN /opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/response.xml -acceptLicense

CMD ["/start.sh"]

# docker build -t srpecnik/ucdrelease .
