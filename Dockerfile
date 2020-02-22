FROM ubuntu

MAINTAINER David Silva <srdavidsilva@gmail.com>

RUN dpkg --add-architecture i386 && apt-get update && apt-get install wine-stable -y

COPY . . 

RUN mkdir -p "/root/.wine/drive_c/Program Files (x86)/Inno Setup 6/" &&  cp -R InnoSetup6/* /root/.wine/drive_c/Program\ Files\ \(x86\)/Inno\ Setup\ 6/

ENTRYPOINT wine /root/.wine/drive_c/Program\ Files\ \(x86\)/Inno\ Setup\ 6/ISCC.exe