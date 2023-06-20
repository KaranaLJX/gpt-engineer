FROM python:3.9

RUN mkdir /code 
COPY . /code 
RUN pip install -r /code/requirements.txt -i https://bytedpypi.byted.org/simple/
WORKDIR /code
ENV OPENAI_API_KEY xxx
CMD ["python","main.py","snake"]