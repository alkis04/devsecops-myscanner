FROM python:3.11-slim

WORKDIR /app

# Install dependencies
RUN pip install flask==2.3.2 requests==2.28.0

RUN echo 'from flask import Flask\napp = Flask(__name__)\n\n@app.route("/")\ndef home():\n    return "My DevSecOps Scanner App"\n\nif __name__ == "__main__":\n    app.run(host="0.0.0.0", port=5000)' > app.py

EXPOSE 5000
CMD ["python", "app.py"]