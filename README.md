# Dockerized Raml2md
Generate a Markdown based documentation from the RAML specification using a Docker container

## How to use

### Folder structure

You need to have a folder called "**docs**", inside which will be your `.raml` files (in a folder called "**source**").

All `.raml` files will be processed in a single run.

```
docs
├── source
    └── example1.raml
    └── example2.raml
```
After execution, a folder called "**build**" will be created containing the `.md` files.
```
docs
├── source
│   └── example1.raml
|   └── example2.raml
├── build
    └── example1.md
    └── example2.md
```

### Execution

You need a Docker volume pointing to your "**docs**" folder. The format is `[your_docs_path]:/docs`

#### PowerShell example
```
docker run --rm --volume ${pwd}\docs:/docs luismh/raml2md
```