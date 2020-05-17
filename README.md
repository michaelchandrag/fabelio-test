# fabelio-test
fabelio-test

## INSTALLATION
Make sure to update your environment variable. Can be found at `.env`
Entrypoint can be found at `build/main.go`
Database can be found at `database/fabelio.sql`

```
cd {project_directory}
source .env
go run build/main.go
```

## TESTING
```
cd build
go test
```