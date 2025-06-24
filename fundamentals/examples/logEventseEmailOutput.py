import smtplib
from email.mime.text import MIMEText
import datetime

# Write logs
log_file = "mylog.txt"
with open(log_file, "w") as f:
    f.write(f"{datetime.datetime.now()}: Script started\n")
    f.write(f"{datetime.datetime.now()}: Doing some work...\n")
    f.write(f"{datetime.datetime.now()}: Script finished\n")

# Read logs
with open(log_file, "r") as f:
    log_content = f.read()

# Email logs (example using Gmail SMTP)
msg = MIMEText(log_content)
msg["Subject"] = "Script Log Output"
msg["From"] = "your_email@gmail.com"
msg["To"] = "recipient@example.com"

try:
    with smtplib.SMTP_SSL("smtp.gmail.com", 465) as server:
        server.login("your_email@gmail.com", "your_password")
        server.sendmail(msg["From"], [msg["To"]], msg.as_string())
    print("Email sent!")
except Exception as e:
    print("Failed to send email:", e)
