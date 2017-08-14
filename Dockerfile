FROM openjdk
RUN git clone https://github.com/SKCraft/Launcher.git && \
    cd Launcher && \
    ./gradlew clean build && \
    mv launcher-builder/build/libs/*-SNAPSHOT-all.jar /usr/local/share/launcher-builder.jar && \
    cd .. && \
    rm -rf Launcher