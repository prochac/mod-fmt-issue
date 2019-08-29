all: wrong fine

wrong:
	cat go.mod
	go mod tidy
	cat go.mod
	go fmt .
	cat go.mod

fine:
	cat go.mod
	go mod tidy
	cat go.mod
	gofmt -l -w .
	cat go.mod

