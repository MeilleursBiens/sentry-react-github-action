
# Sentry React Release action

This action creates a Sentry release and deployment for your React app and uploads source maps. You can read more about how Sentry handles [releases](https://docs.sentry.io/workflow/releases/?platform=browsernpm) and [source maps](https://docs.sentry.io/platforms/javascript/sourcemaps/).

## Environment

#### `SENTRY_ORG`

**Required** The Sentry organization.

#### `SENTRY_AUTH_TOKEN`

**Required** The Sentry authentication token.

#### `SENTRY_PROJECT`

**Required** The Sentry project to which this release will be added.

#### `RELEASE`

**Required** The name of the release.

#### `COMMIT`

**Required** The hash of the commit.

#### `GITHUB_PROJECT`

**Required** The GitHub project with which this release will be associated.

#### `DEPLOYMENT_ENV`

**Required** The environment to which this release is being deployed.

#### `URL_PREFIX`

**Required** The URL prefix in front of files. This is useful when files are stored in a subdirectory. For Reach this is normally `~/static/js`.

#### `SOURCEMAP_PATH`

**Required** The path to the sourcemap(s). For React this is normally `build/static/js`.

## Example usage

```yaml
- name: Create Sentry release
        uses: MeilleursBiens/sentry-react-github-action@v1.1.4
        env:
          SENTRY_ORG: ${{ secrets.SENTRY_ORG }}
          SENTRY_AUTH_TOKEN: ${{ secrets.SENTRY_AUTH_TOKEN }}
          SENTRY_PROJECT: ${{ secrets.SENTRY_PROJECT }}
          RELEASE: v${{ steps.package-version.outputs.current-version}}
          COMMIT: ${{ github.sha }}
          GITHUB_PROJECT: org/project
          DEPLOY_ENV: production
          URL_PREFIX: ~/static/js
          SOURCEMAP_PATH: build/static/js
```
