TRAVIS_PULL_REQUEST_SLUG="flovilmart/Parse-SDK-JS"
REPO="https://github.com/${TRAVIS_PULL_REQUEST_SLUG}"

rm -rf docs
git clone -b gh-pages --single-branch $REPO ./docs

npm run docs
cp -R out/* docs
