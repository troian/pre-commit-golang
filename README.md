pre-commit-golang
=================

golang hooks for http://pre-commit.com/

### Using these hooks

In your project root dir add this to `.pre-commit-config.yaml`

    -   repo: https://github.com/troian/pre-commit-golang
        sha: HEAD
        hooks:
        -   id: go-fmt
        -   id: go-build
        -   id: go-metalinter
            args:
            - --exclude=corefoundation.go
            - --deadline=60s
            - --vendor
            - --cyclo-over=20
            - --dupl-threshold=100
            - --disable=gotype

### Available hooks

- `go-fmt` - Runs `gofmt`, requires golang
- `go-vet` - Runs `go vet`, requires golang
- `go-lint` - Runs `golint`, requires https://github.com/golang/lint
- `go-build` - Runs `go build`, requires golang
- `go-metalinter` - Runs `gometalinter`, requires https://github.com/alecthomas/gometalinter

### Metalinter

- Runs on all files by default not just changed files (since the metalinter only operates on folders)
- Use args to override default options
