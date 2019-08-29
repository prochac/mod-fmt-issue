Use the Makefile

The wrong one that use `go fmt .` is editing `go.mod` file
```
$ make wrong
```

Correct one is that use `gofmt -l -w .`. No change in `go.mod`
```
$ make fine
```

What i see a problem is change of `go.mod`.

I shouldn't happend.

And another issue is that output of `go fmt .` and `gofmt -l -w .` should be consistent.
See `go help fmt`
``` bash
$ go help fmt
usage: go fmt [-n] [-x] [packages]

Fmt runs the command 'gofmt -l -w' on the packages named
by the import paths. It prints the names of the files that are modified.

For more about gofmt, see 'go doc cmd/gofmt'.
For more about specifying packages, see 'go help packages'.

The -n flag prints commands that would be executed.
The -x flag prints commands as they are executed.

To run gofmt with specific options, run gofmt itself.

See also: go fix, go vet.
```