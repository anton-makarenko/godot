function Switch-Branch {
	$ReleaseTag = "4.7-stable"
	$MyBranchName = "custom-build"
	if (-not (git rev-parse --verify --quiet $MyBranchName)) {
		git checkout -b $MyBranchName $ReleaseTag
	}
	else {
		git switch $MyBranchName
	}
}