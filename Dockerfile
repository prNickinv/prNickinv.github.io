FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND="noninteractive" TZ="America/New_York" apt-get install -y tzdata \
    texlive-base \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-fonts-recommended \
    texlive-xetex \
    texlive-latex-extra \
    texlive-fonts-extra \
    cm-super \
    texlive-xetex


COPY cv/ /
RUN chmod u+rx resume.sh
CMD /resume.sh
