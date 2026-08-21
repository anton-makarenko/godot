git fetch upstream --tags
release_tag = $(git describe --tags --abbrev=0)
my_branch_name = "custom-build"

if [ -z "$(git ls-remote origin $release_tag)" ]; then
	git checkout -b $my_branch_name $release_tag
else
	git switch $my_branch_name
fi