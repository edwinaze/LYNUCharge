# Run

## backend

```shell
docker-compose -f docker-compose-env.yml up
```
When previous launch ready:
```shell
docker-compose -f docker-compse-service.yml up
```

## frontend

Then navigate to `./front-end/` and run:
```shell
npm install
```
After installation completed:
```shell
npm run dev
```


# TODO

- Package front-end in docker and launch entire project in one command.