from flask import Flask
import os
import psycopg2

app = Flask(__name__)

@app.route('/')
def hello():
   conn = psycopg2.connect(
       dbname="postgres",
       user="user",
       password="pass",
       host="db"  # hostname = service name in Compose
   )
   return "Connected to DB!"

if __name__ == "__main__":
   app.run(host="0.0.0.0")
