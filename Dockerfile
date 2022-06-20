FROM python:3.7

WORKDIR /demo-bot
COPY . /demo-bot

RUN pip install -r /demo-bot/requirements.txt
RUN python3 -m spacy download en_core_web_md
RUN python3 -m spacy link en_core_web_md en
RUN chmod +x /demo-bot/start.sh

CMD ["sh", "/demo-bot/start.sh"]