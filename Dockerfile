FROM espressif/idf-rust:esp32_latest

WORKDIR /home/esp/cmake

RUN cd ..

RUN rustup +stable component add rust-src rustc-dev llvm-tools-preview

RUN curl -O -L https://github.com/Kitware/CMake/releases/download/v3.29.0-rc1/cmake-3.29.0-rc1-linux-x86_64.sh
RUN chmod +x cmake-3.29.0-rc1-linux-x86_64.sh
# RUN mkdir /home/esp/cmake
RUN ./cmake-3.29.0-rc1-linux-x86_64.sh --prefix=/home/esp/cmake --skip-license
RUN rm cmake-3.29.0-rc1-linux-x86_64.sh

ENV PATH=${PATH}:/home/esp/cmake/bin

CMD [ "/bin/bash" ]