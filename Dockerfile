FROM python:3.7.0
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python", "app.py"]
#ENTRYPOINT ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]