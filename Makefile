.PHONY release:
		git diff-index --quiet HEAD --
		git tag v$$(./kubectl-gopass version)
