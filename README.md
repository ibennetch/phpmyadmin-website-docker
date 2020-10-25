Docker image for phpMyAdmin website

First, put the `website` repository as a subdirectory of the `web` folder (`./web/website`).
There are several methods you could use, picking the best one is left as an excersie for the reader.

1. Clone the website repository:

    ```
    cd web
    git clone https://github.com/phpmyadmin/website.git
    # or
    # git clone git@github.com:phpmyadmin/website.git

    cd ..
    ```

2. Add a Git submodule

3. Symlink a separate directory

4. Download the source tarball

Once the website repository exists in `./web/website`, run docker-compose:

`docker-compose up --build -d`

The website is now exposed to you on <http://localhost:8000>.

# Notes

This image is built off of Alpine, but probably should be refactored to use Debian as that's what the server is running.

This project uses [wait-for](https://github.com/eficode/wait-for), an MIT-licensed `sh` implementation similar to wait-for-it (which is written in Bash).

