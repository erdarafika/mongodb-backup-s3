FROM mongo

RUN apt-get update && apt-get -y install cron awscli

ENV CRON_TIME="0 3 * * *" \
  TZ=Asia/Jakarta \
  CRON_TZ=Asia/Jakarta

ADD run.sh /run.sh
CMD /run.sh
