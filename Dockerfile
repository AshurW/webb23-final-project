FROM python:3.10-slim

# kommandon kommer att köras från denna mapp
WORKDIR /app 
# kopiera alla filer från nuvarande mapp till /app
ADD . /app
#installerar alla paket som finns i requirements.txt
RUN pip install -r requirements.txt
# anger kommandot som ska köras när containern startas
CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]