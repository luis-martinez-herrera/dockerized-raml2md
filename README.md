# Dockerized Raml2md
Generate a Markdown based documentation from the RAML specification using a Docker container

## How to use

### Folder structure

You need to have a folder called "docs", inside which will be your .raml files

```
docs
├── source
    └── example.raml

```
After execution, a folder called "build" will be created containing the .md files
```
docs
├── source
│   └── example.raml
├── build
    └── example.md
```

### PowerShell execution
`docker run --rm --volume ${pwd}\docs:/docs luismh/raml2md`