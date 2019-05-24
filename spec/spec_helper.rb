require "serverspec"
require "docker"

set :backend, :docker

set :docker_image, ENV['DOCKER_IMAGE']
set :docker_container, ENV['DOCKER_CONTAINER']

# via. http://qiita.com/sue445/items/b67b0e7209a7fae1a52a
require "yaml"
require "itamae"
#require "itamae/node"

def node
  return @node if @node

  hash = YAML.load_file("#{__dir__}/../recipes/node.yml")

  @node = Itamae::Node.new(hash, Specinfra.backend)
end
