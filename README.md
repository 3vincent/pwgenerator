# pwgenerator

OVERVIEW: Generates a random Password

USAGE: pw-generator [<length>] [-u] [-s] [-n]

ARGUMENTS:
  <length>                Specified length (default: 8)

OPTIONS:
  -u                      Include uppercase letters
  -s                      Include special characters
  -n                      Include numbers
  --version               Show the version.
  -h, --help              Show help information.

## Compiling binary during development

While developing run the application with

    $ swift run 

or 

    $ swift run pwgenerator <Arguments>

Example (in development)]

    $ swift run pwgenerator 32 -usn

## Build release version

    $ swift build --configuration release

Copy the file from `.build` to e.g. `/usr/local/bin`

    $ cp -f .build/release/pwgenerator /usr/local/bin/pwgenerator



## Initial setup

Initial command line tool boilerplate for Xcode/swift was created with:

```
$ swift package init --type executable
$ git init && git add -A && git commit -m "Initial commit"
```
