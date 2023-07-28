FROM python:3.10-slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends

RUN mkdir /jaffle-shop
WORKDIR /jaffle-shop

# Install the dbt Postgres adapter. This step will also install dbt-core
RUN pip install --upgrade pip
RUN pip install dbt-postgres==1.5.4

# Install dbt dependencies
# Build seeds, models and snapshots (and run tests wherever applicable)
CMD dbt deps && dbt build && sleep infinity