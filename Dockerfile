FROM ubuntu:latest

MAINTAINER Fabian Aguirre

ADD blankLinesCounter.sh .
ADD findNames.sh .
ADD menu.sh .
ADD statsSentences.sh .
ADD statsUsageWords.sh .
ADD statsWords.sh .
ADD texto.txt .

ENTRYPOINT ./menu.sh

