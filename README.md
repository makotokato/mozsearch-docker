A docker compose file for [mozsearch](https://github.com/mozsearch/mozsearch).

## How to run mozsearch using docker compose.

mozsearch's development environment uses vagrant, but this files uses docker-compose to run mozsearch on your machine.

### Pull mozsearch on your home directory

```
cd $HOME
git https://github.com/mozsearch/mozsearch
```

### Create mozsearch configs on your home directory.

### Add .env file in this docker-compose file's directory

See `env.sample`.

### Setup Indexer
```
docker-compose up indexer-setup
```

### Run Indexer
```
docekr-compose up indexer
```

### Run Web server
```
docekr-compose up web
```
