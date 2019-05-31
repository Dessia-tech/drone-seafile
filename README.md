# drone-seafile

![github stars](https://img.shields.io/github/stars/Dessia-tech/drone-seafile.svg?style=social)

A Drone plugin for uploading files to a seafile server


## Usage

```
pipeline:
  seafile-upload:
    image: dessia/drone-seafile
    settings:
      server_url: https://seafileserver.tld
      repo_id: 
        from_secret: repo_id
      seafile_token:
        from_secret: seafile_token
      file: upload_test.md
      root_directory: '/subdir/'

```
