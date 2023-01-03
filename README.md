
## Setup API contracts

This project contains a Git submodule for the *influxdata/openapi* repository.
This project uses the InfluxData API `ref` contracts located at *./openapi/contracts/ref*.
To make changes to *openapi* files, edit the OpenAPI definitions in *./openapi/src* and then
regenerate the contracts.

### Generate influxdata/openapi contracts

To regenerate the contracts after changing `src` files, do the following:

1. In your terminal, change to the cloned `openapi` directory.
   
   ```sh
   cd openapi
   ```

2. In your terminal, enter `make generate-all` to build the InfluxDB *openapi* contracts.
3. *Optional*. Use `git add` to stage your `src` *and* `contract` changes, and then use `git commit` to commit them to your branch.

## Setup the documentation web site

This project borrows from the [Docsy Example app]() and uses the [Docsy theme module for Hugo]().

Follow these steps to build the site:

- [Install Golang](#install-golang)
- [Install NodeJS, Hugo Extended, and dependencies](#install-nodejs-hugo-extended-and-dependencies)

### Install Golang

This project uses Hugo Extended to create a web site for managing and publishing documentation.
Hugo Extended requires Golang. If you haven't already, follow the instructions to install Golang for your system.

### Install NodeJS, Hugo Extended, and dependencies

This project uses `npm`, the NodeJS package manager, to manage Hugo Extended and SCSS packages as *dev dependencies*. `npm` is provided when you install NodeJS.

1. Follow the instructions to install NodeJS for your system.
2. Change to your project root directory (*./demo-influxdb-api-docs*)--for example:

  ```sh
  cd ~/GitHub/demo-influxdb-api-docs
  ```

3. Enter the following command:

   ```sh
   npm install
   ```

NPM installs the dependencies listed in the *package.json* file.

Once you've installed Golang, Hugo, and the dependencies, you're ready to start your Hugo server
and launch your site.
In your terminal, do the following:

1. Change to the project *./docs* directory
   
   ```sh
   cd ./docs
   ```
2. Use `npx` (provided by NodeJS) to start your site in *development* mode:
   
   ```sh
   npx hugo server
   ```

In your browser, visit <http://localhost:1313> to view your site.

## Troubleshoot the documentation web site

### Error: Hugo failed to extract a shortcode

If the Hugo server reports the following error:

```sh
Error: Error building site:... failed to extract shortcode: template for shortcode "blocks/cover" not found
```

Delete the Hugo cache on your system, and then restart Hugo--for example, enter the following commands:

```sh
sudo rm -rf $TMPDIR/hugo_cache/
npx hugo server  
```
