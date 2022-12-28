
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
