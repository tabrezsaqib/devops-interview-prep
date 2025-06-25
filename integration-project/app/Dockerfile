FROM python:3.9-slim

# Install logrotate
RUN apt-get update && apt-get install -y logrotate

# Copy app and logrotate config
WORKDIR /app
COPY . .
COPY logrotate.conf /etc/logrotate.d/flask

# Set up cron job
RUN echo "* * * * * /usr/sbin/logrotate /etc/logrotate.d/flask" > /etc/cron.d/logrotate && \
    chmod 0644 /etc/cron.d/logrotate

# Run app + logrotate every minute
CMD ["sh", "-c", "cron && python app.py"]
