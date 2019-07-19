# find something in a file
# requires silver searcher
function find_in_file() {
  echo "positional args 'dir', 'file', 'search term' "
  set -x
  find ${1:-~} -name ${2:-Dockerfile} -print0 | xargs -0 ag -A2 -B2 ${3:-ENV}
  set +x
}


