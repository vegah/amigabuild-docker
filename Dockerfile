FROM ubuntu:22.04
RUN apt-get update && apt-get install -y make wget git gcc g++ lhasa libgmp-dev libmpfr-dev libmpc-dev flex bison gettext texinfo ncurses-dev autoconf rsync libreadline-dev && git clone https://github.com/bebbo/amiga-gcc.git
WORKDIR amiga-gcc
RUN make update && make clean && make clean-prefix && make all -j3
RUN git clone https://github.com/deplinenoise/amiga-sdk.git && cp -r amiga-sdk/sdkinclude/* /opt/amiga/m68k-amigaos/include/ && ln -s /opt/amiga/m68k-amigaos/include/ /include
ENV PATH="/opt/amiga/bin:${PATH}"