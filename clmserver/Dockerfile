FROM rhel7:latest
MAINTAINER PacGenesis
EXPOSE 9080 9443

COPY agent.installer.linux.gtk.x86_64_1.8.3000.20150606_0047 /tmp/agent.installer.linux.gtk.x86_64_1.8.3000.20150606_0047/
COPY JTS-CCM-QM-RM-JRS-RELM-repo-6.0.1 /tmp/JTS-CCM-QM-RM-JRS-RELM-repo-6.0.1/ 
COPY silent-install-server.xml /tmp/

RUN /tmp/agent.installer.linux.gtk.x86_64_1.8.3000.20150606_0047/installc -log logfile.txt -acceptLicense
RUN /opt/IBM/InstallationManager/eclipse/tools/imcl input /tmp/silent-install-server.xml -acceptLicense
RUN rm -rf /tmp/agent.installer.linux.gtk.x86_64_1.8.3000.20150606_0047/ && rm -rf /tmp/JTS-CCM-QM-RM-JRS-RELM-repo-6.0.1/

CMD ["/opt/IBM/JazzTeamServer/server/server.startup", "run"]
