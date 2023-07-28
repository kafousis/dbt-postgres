## dbt project: `jaffle_shop`

### run with Docker
```bash
docker-compose build
docker-compose up
```

### dbt commands
```bash
# load csv files
dbt seed

# generate sql
dbt compile 
dbt compile --model <model>

# run models
dbt run
dbt run --select <model>

# run tests
dbt test --select <model>

# generate & serve docs
dbt docs generate
dbt docs serve
```