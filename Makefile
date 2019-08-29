all: wrong fine

wrong:
	go mod tidy
	git status --porcelain
	go fmt .
	git status --porcelain

fine:
	go mod tidy
	git status --porcelain
	gofmt -l -w .
	git status --porcelain

