# Node Builds

:warning: **WARNING: DON'T USE IN PRODUCTION. Build your own**

## Images

| Base Image       | Tag                      | Exposed Ports |
|------------------|--------------------------|---------------|
| `node:10-alpine` | `sirajul/node:10-latest` | `80`          |
| `node:14-alpine` | `sirajul/node:14-latest` | `80`          |
| `node:16-alpine` | `sirajul/node:16-latest` | `80`          |
| `node:18-alpine` | `sirajul/node:18-latest` | `80`          |
| `node:19-alpine` | `sirajul/node:19-latest` | `80`          |

## Executables

- `sh`
- `curl`
- `python2`
- `python3`
- `nano`
- `vim`
- `unzip`
- `zip`
- `git`
- `jq`
- `wget`

## Package manager cache directories

- Yarn: `/tmp/yarn-cache`
- NPM: `/tmp/npm-cache`
