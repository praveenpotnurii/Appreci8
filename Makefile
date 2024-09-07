postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root appreci8

dropdb:
	docker exec -it postgres12 dropdb appreci8

migrateup:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/appreci8?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://root:secret@localhost:5432/appreci8?sslmode=disable" -verbose down

createmig:
	migrate create -ext sql -dir db/ -seq init_schema

.PHONY: postgres createdb dropdb migrateup migratedown createmig