git fetch upstream --tags
$ReleaseTag = git describe --tags --abbrev=0
$MyBranchName = "custom-build"

if (-not (git ls-remote origin $MyBranchName)) {
	git checkout -b $MyBranchName $ReleaseTag
}
else {
	git switch $MyBranchName
}