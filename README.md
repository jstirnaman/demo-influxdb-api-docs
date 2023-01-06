## What is this?

A sample site using Hugo for API documentation.
Send the Docs is where I experiment with Docs-as-code to build developer-friendly documentation.

[Learn more about this project](#more-about-this-project).

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

## More about this project

### Goals

<ol>
   <li>Practice coding, managing content with Hugo, automating content pipelines, and deploying.</li>
   <li>Practice technical writing.</li>
   <li>
   Use OSS and automation to generate templated Markdown documents from an API specification.
   </li>
   <li>Develop Markdown templates that structure API endpoint documentation in a user-friendly format.</li>
   <li>Transform the generated Markdown to populate the template(s).</li>
   <li>
   Use Hugo, the popular static site generator, and open-source themes to render the templated documentation.
   </li>
   <li>
   Enhance the documentation with the following features: code samples, "try-it", theme parameters.
   </li>
</ol>

### About the author

I'm a technical writer, documentation engineer, developer, and librarian.
I fell in love with metadata (for biodiversity sampling) and the Web in the late 1990's.
After earning my Master's in Library and Information Science, I worked as a reference librarian and managed digital library collections, content repositories, and web sites.

Out of a hunger to solve problems, a desire to automate tedious tasks, and a passion for information sharing, I continued learning agile, programming, and DevOps.
I've used React, TypeScript, and API integrations to build a lead discovery platform. 
I've worked on content management and search with Solr, Drupal, Ruby on Rails, PostgreSQL, and XSLT.
I've worked with a large team on a legacy payments processing system using "plain ol'" JavaScript, jQuery, Java, and Oracle.

I was fortunate to pair with some great developers who taught me the value and practice
of automated tests.
I learned CI/CD and how to automate processes I'd never considered.

When I considered leaving the public sector for the for-profit world, I feared that I didn't have
what it took to be a frontend engineer in a fast-paced, corporate world.
As it turned out, some aspects weren't as fast-paced as I would've liked.
For everything else, our team relied on each other and figured it out together.
Working as an engineer and technical lead, I found that my technical skills were sufficient, 
but my superpower was more about helping other developers be successful.
I was reminded of what I enjoy most:

- Helping people learn.
- Sharing information.
- Writing and editing.
- Applying automation to improve quality and to free people up for more creative work.

At InfluxData, I found a great team and the perfect mix of writing, automating, hacking on APIs, and helping developers.
So, I took the leap into technical writing and they took a risk on me.
Since then I've also volunteered as a technical writer with the Ethereum Foundation, writing guides for the Semaphore protocol and smart contracts.

When I'm not working on docs and code, I'm playing with my family, cooking, cycling, and enjoying music.
Don't be surprised if some of those themes trickle in here.
