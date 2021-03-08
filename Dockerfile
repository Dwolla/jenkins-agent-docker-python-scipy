FROM dwolla/jenkins-agent-python:latest
MAINTAINER Dwolla Dev <dev+jenkins-python@dwolla.com>
LABEL org.label-schema.vcs-url="https://github.com/Dwolla/jenkins-agent-docker-python-scipy"

USER root
RUN apk add --update \
        build-base \
        freetype-dev \
        gfortran \
        jpeg-dev \
        lcms2-dev \
        libffi-dev \
        openblas-dev \
        openjpeg-dev \
        pkgconfig \
        tiff-dev \
        tk-dev \
        tcl-dev \
        zlib-dev

RUN pip3 install --upgrade \
        wheel

RUN pip3 install --upgrade \
        matplotlib \
        numpy \
	pandas \
        pyodbc \
        pytest \
        pytest-order \
        scipy \
	sklearn \
	statsmodels \
	xarray

RUN rm -rf /var/cache/apk/*

USER jenkins
