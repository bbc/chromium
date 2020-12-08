FROM ubuntu:20.04
LABEL maintainer="ewan.roycroft@bbc.co.uk"

# Updates
# Use apt-get to avoid "WARNING: apt does not have a stable CLI interface." 
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y tzdata

# Set timezone
ENV TZ "Europe/London"
RUN echo $TZ > /etc/timezone
RUN rm /etc/localtime
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

# Install deps
RUN apt-get install -y curl git lsb-release python snapd sudo wget

# Install Chromium build deps
ADD ./build/install-build-deps.sh .
RUN chmod u+x ./install-build-deps.sh
RUN ./install-build-deps.sh --no-chromeos-fonts --arm
RUN rm ./install-build-deps.sh

# Add Jenkins user
RUN groupadd -g 134 jenkins
RUN useradd jenkins -u 127 -g 134 --shell /bin/bash --create-home
USER jenkins

# Clone depot_tools
RUN git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /home/jenkins/depot_tools
ENV PATH "$PATH:/home/jenkins/depot_tools/"
