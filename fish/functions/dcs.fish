# Defined in - @ line 1
function dcs --wraps=docker-compose --description 'alias dcs=docker-compose'
  docker-compose  $argv;
end
