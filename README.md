
# Generate influxdata/openapi contracts

This project contains a Git submodule for the *influxdata/openapi* repository.
The InfluxData API contracts are located at *./openapi/contracts*.
This project uses the `ref` contracts located at *./openapi/contracts/ref*.

To regenerate the contracts after changing `src` files, do the following:

1. In your terminal, change to the cloned `openapi` directory.
   
   ```sh
   cd openapi
   ```

2. In your terminal, enter `make generate-all` to build the InfluxDB *openapi* contracts.
3. *Optional*. Use `git add` to stage your `src` *and* `contract` changes, and then use `git commit` to commit them to your branch.

# Install Golang

This project uses Hugo Extended to create a web site for managing and publishing documentation.
Hugo Extended requires Golang. If you haven't already, follow the instructions to install Golang for your system.

# Install NodeJS, Hugo Extended, and dependencies

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
