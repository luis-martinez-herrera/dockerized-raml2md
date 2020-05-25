# Dockerized Raml2md
Generate a Markdown based documentation from the RAML specification using a Docker container.

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

### Image pull
```
docker pull luismh/raml2md
```

### Execution

You need a Docker volume pointing to your "**docs**" folder. The format is `[your_docs_path]:/docs`

**_Windows users_:** in some cases you may get the following messages: `cannot remove 'build /'`, `no such file or directory`. This is due to a Docker problem, just run it again :)

#### PowerShell example
```
docker run --rm --volume ${pwd}\docs:/docs luismh/raml2md:1.0
```

#### Shell example
```
docker run --rm --volume "$(pwd)\docs":/docs luismh/raml2md:1.0
```

## Project resources

- [Docker Hub](https://hub.docker.com/r/luismh/raml2md)
- [Github](https://github.com/luis-martinez-herrera/dockerized-raml2md)

## Acknowledgments

This project is based on:
 - [raml2html-full-markdown-theme](https://github.com/Vanderhoof/raml2html-full-markdown-theme)
 - [raml2html](https://github.com/raml2html/raml2html)
 
## Licence

[GNU General Public License v3.0](https://choosealicense.com/licenses/gpl-3.0/)