# QA Functional Specs, Features and Tests

The objective of this repository is to perform automated tests on the functional layer with functional language **Gherkin** for **BDD** purposes.
The ecosytem is based on **cucumber, capybara (framework), rspec (for asserts), SitePrism (for page object concepts)** and **faker (random data)**.

## Getting Started
### Cloning the repository

```git
git clone https://github.com/fixeadssa/jaws_crm_re_tests.git
```
### Installing

- Ruby 2.2.0 or higher should be installed;
- Bundler gem should be installed:

```ruby
gem install bundler
```
Execute the bundle command in root path where Gemfile is:

```shell
bundle install
```

- Chrome and Firefox drivers should be installed so that selenium can start in a browser (configured in env.rb file):

```shell
#First install the Nodejs package:
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install jq nodejs curl -qy

#After install the chrome and firefox drivers
npm install -g geckodriver
npm install -g chromedriver
```

## Test Execution

**NOTE:** *env* is the environment to use. You can find the list of environments in

- To run all the features for a certain environment, in the /cucumber path execute:

```shell
cucumber -p chrome -p env
```

- To run a specific feature, execute:

```shell
cucumber -p chrome -p env --require features features/specifications/path/xxx.feature
```
- To run a specific scenario, execute:

```shell
cucumber -p chrome -p env --tags @tagname
```
