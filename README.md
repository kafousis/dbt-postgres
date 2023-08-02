## dbt project: `jaffle_shop`

### run with Docker
```bash
docker-compose build
docker-compose up
```

### Work from VS Code
- DevContainers Plugin is used to connect to docker container
- dbt Power User Plugin is used to work with dbt in VS Code

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

# run tests over specific model
dbt test --select <model>

# run tests over specific source
dbt test --select source:<source>

# run,test in DAG order
dbt build

# generate & serve docs
dbt docs generate
dbt docs serve
```