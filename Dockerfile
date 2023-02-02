FROM mcr.microsoft.com/playwright:v1.28.1-jammy AS base

FROM base
RUN apt-get update -y && apt-get install -y python3-pip
RUN pip3 install -r requirements.txt
ENV HEADLESS_BROWSER=True
RUN python server.py
