# Yatamansy API

[Introduction text about the project. This should be a short summary of the project that explains what it is and why anyone should care about it]

[optional image]

## Getting Started
### Requirements
TO-DO: include a bulleted list of any dependencies your project requires. 
Include links to the dependencies, and additionally links to helpful resources
to get up and running with the project's dependencies]


### Developing

Requirements:
- rails >= 2.3.1

It would be recommendable to have rvm installed.

To start developing, clone repository and install gems: 
```````
git clone https://github.com/AlvaroMaceda/yatamansy-api.git
cd yatamansy-api
gem install bundler
bundle install
```````

To launch API server:

```````
rake start
```````

(or simply ```````rake ``````` )

#### Developing notes

- To clear all gems in gemset:
rvm gemset empty yatamansy

- Configure local gems:
bundle config --local local.jsend path_to/jsend

This will create a .bundle/config file with the configuration. That file is gitignored

### Testing

TO-DO
```````
[Testing instructions]
```````

### Installation
TO-DO
```````
[installation instructions]
```````

### Contributing and Contact
TO-DO