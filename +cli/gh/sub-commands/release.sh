# release

## create
# https://cli.github.com/manual/gh_release_create
# gh release create [<tag>] [<files>...]

# Non-interactively create a release
gh release create v1.2.3 --notes "bugfix release"

# Upload all tarballs in a directory as release assets
gh release create v1.2.3 ./dist/*.tgz

## upload
# https://cli.github.com/manual/gh_release_upload
# -R, --repo <[HOST/]OWNER/REPO>
# gh release upload <tag> <files>... [flags]

## view
# https://cli.github.com/manual/gh_release_view
# gh release view [<tag>] [flags]

## download
# https://cli.github.com/manual/gh_release_download
# gh release download [<tag>] [flags]

# download all assets from a specific release
gh release download v1.2.3


# Download assets from latest release
ver=$(gh -R $REPO release view --json tagName --jq .tagName)
gh -R $REPO release download $ver -D /tmp