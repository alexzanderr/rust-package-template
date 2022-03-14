
![logo](https://github.com/alexzanderr/rust-{{ package-name }}/blob/main/static/img/logo/rust-{{ package-name }}-logo.png?raw=True)

<p align="center">
    <a href="https://alexzanderr.github.io/rust-{{ package-name }}/book/index.html">
        <img src="https://github.com/alexzanderr/rust-{{ package-name }}/actions/workflows/deploy_book.yaml/badge.svg" alt="book_deploy">
    </a>
    <br>
    <a href="">
        <img src="https://github.com/alexzanderr/rust-{{ package-name }}/actions/workflows/vulnerabilities_audit.yaml/badge.svg" alt="vuln">
    </a>
    <br>
    <a href="https://crates.io/crates/{{ package-name }}">
        <img src="https://github.com/alexzanderr/rust-{{ package-name }}/actions/workflows/crates_io_publish.yaml/badge.svg" alt="crates_io_publish">
    </a>
    <br>
    <a href="https://crates.io/crates/{{ package-name }}">
        <img src="https://img.shields.io/crates/v/{{ package-name }}.svg" alt="Crates.io">
    </a>
    <br>
    <a href="https://choosealicense.com/licenses/mit/" alt="License: MIT">
        <img src="https://img.shields.io/badge/license-MIT-green.svg" />
    </a>
</p>



# Rust {{ Package-Name}}
intro

# Table of Contents
- [Table of Contents](#table-of-contents)
    - [Showcases](#showcases)
    - [Install](#install)
    - [Documentation](#documentation)
    - [TODO](#todo)
    - [Contributing](#contributing)
    - [Changelog](#changelog)
    - [NOTE](#note)


# Showcases
first you need to see the showcases to convince you to install it.

1. [`1`]()
2. [`2`]()

# Install
### 1. the modern and simple way

just run this command
```shell
cargo add {{ package-name }}
```
and this will add the `latest version` from `crates.io` to your `Cargo.toml`, just like the old way, but automatically.

- what is `cargo add` ? -> its a cargo sub command
- how to install it ? -> `cargo install cargo-edit`
- what is [`cargo-edit`](https://github.com/killercup/cargo-edit) ? -> its a rust package that adds useful sub commands for cargo that are not `built-in`

### 2. the old way

just copy the `crate name` and the version you want to use:
```toml
{{ package-name }} = "$the_version_you_want"
# example
{{ package-name }} = "0.0.6"
```
to your `Cargo.toml` and then write some code and build your project that uses `{{ package-name }}`.


# Documentation
- [`docs.rs/{{ package-name }}`](https://docs.rs/{{ package-name }}/latest/python/)
- [`the-book`](https://alexzanderr.github.io/rust-{{ package-name }}/book/index.html)


# why ?
because i can.


# TODO
check [`TODO.md`](https://github.com/alexzanderr/rust-{{ package-name }}/blob/main/TODO.md)


# Contributing
check [`CONTRIBUTING.md`](https://github.com/alexzanderr/rust-{{ package-name }}/blob/main/CONTRIBUTING.md
)

# Changelog
check [`CHANGELOG.md`](https://github.com/alexzanderr/rust-{{ package-name }}/blob/main/changelog/CHANGELOG.md)

# Crates that use {{ package-name }}
incoming, would be nice.

# NOTE
note for the user and developer

if you find `issues` go ahead and make an
[`issue`](https://github.com/alexzanderr/rust-{{ package-name }}/issues/new)
or a
[`pull request`](https://github.com/alexzanderr/rust-{{ package-name }}/compare),
cant wait to take a look into them.


right now this project is very minimal, it will grow, the idea just came to my mind some days ago (on 21.02.2022) and the first implementation was done at 4 AM (23.02.2022) with some adrenaline.

so for now dont expect too much of this crate

peace to you!