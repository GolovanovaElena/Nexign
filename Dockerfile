FROM python:3-alpine
MAINTAINER Elena Golovanova <gol.elena99@gmail.com>
WORKDIR /app
COPY hello.html /app
RUN adduser -u 1001 --disabled-password --gecos "" appuser && chown -R appuser /app
USER appuser
EXPOSE 8000
CMD ["python", "-m", "http.server", "8000"]
