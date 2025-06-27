# Arcuit
Arcuit (**ARC**light: **U**niversity of **I**llinois **T**heme) is a Rails Engine that customizes Arclight for the specific requirements of the University of Illinois Urbana-Champaign Library.


## Requirements

* [Ruby](https://www.ruby-lang.org/en/) 3.4.3 or later
* [Rails](http://rubyonrails.org) 7.2.2 or later


## Installation
To create an ArcLight application with Arcuit customizations, you can start by running the Arcuit generator:

```bash
rails new my-app -m https://raw.githubusercontent.com/UIUCLibrary/arcuit/main/template.rb --css bootstrap -a propshaft -j importmap
```

This will create a new ArcLight instance with Arcuit in a directory `my-app` in a few minutes.

Next, change directory into the new application's directory and install the Ruby dependencies:

```bash
cd my-app
bundle install
```

From here, you can follow [ArcLight's instructions for starting the server](https://github.com/projectblacklight/arclight/wiki/Creating,-installing,-and-running-your-ArcLight-application#starting-the-server).


## Development
For development, start by cloning the repository to your local environment:

```bash
git clone https://github.com/UIUCLibrary/arcuit.git
```

Create an Arclight application by running the Arcuit generator:
```bash
rails new my-app -m arcuit/template.rb --css bootstrap -a propshaft -j importmap
```

Next, open the application's Gemfile (`my-app/Gemfile`) and replace the following line:

```ruby
gem "arcuit", git: "https://github.com/UIUCLibrary/arcuit"
```

with:

```ruby
gem "arcuit", path: "path_to_arcuit"
```

This change ensures your new ArcLight application references your local `arcuit` directory, enabling you to develop and test changes to Arcuit in real time as you modify files.

Change directory into the new application's directory and install the Ruby dependencies:

```bash
cd my-app
bundle install
```

ArcLight requires a Solr server. To quickly set up Solr for ArcLight, refer to [ArcLight's instructions for starting the server](https://github.com/projectblacklight/arclight/wiki/Creating,-installing,-and-running-your-ArcLight-application#starting-the-server). If you already have a local Solr server up and running, you can skip this step.

> **Tip:** If you have a Solr server hosted on a remote machine, you can create an SSH tunnel to access it locally:
> ```bash
> ssh -NTL 8983:localhost:8983 remote_host_address
> ```

To launch the ArcLight application, use the following command:

```bash
cd my-app
bin/dev
```

By default, the application will be available at [http://localhost:3000/](http://localhost:3000/). Stop the server at any time by pressing `CTRL+C`.


## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
