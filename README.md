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
      files: upload_test.md
      root_directory: '/subdir/'

```

### Parameters: 
* repo_id: the seafile library id that can be found in its URL
* token: a token created through the API: https://lins05.gitbooks.io/seafile-docs/content/develop/web_api.html
