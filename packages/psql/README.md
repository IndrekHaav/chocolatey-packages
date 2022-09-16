# psql

psql is a terminal-based front-end to PostgreSQL. It enables you to type in queries interactively, issue them to PostgreSQL, and see the query results. Alternatively, input can be from a file or from command line arguments. In addition, psql provides a number of meta-commands and various shell-like features to facilitate writing scripts and automating a wide variety of tasks.

## Documentation

https://www.postgresql.org/docs/current/app-psql.html

## Package notes

This package downloads the full PostgreSQL ZIP archive, but extracts only the files needed to run `psql` as well as a few other useful utilities (`pg_dump` and `pg_restore`).
