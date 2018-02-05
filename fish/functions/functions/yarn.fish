# Defined in - @ line 0
function yarn 
	set -l yarn_commands \
		add autoclean bin cache check config create dedupe generate-lock-entry global help import info init install licenses link lockfile log{in,out} list \
		outdated owner pack prune publish remove self-update tag team test unlink upgrade{,-interactive} version{,s} why

	set -l cmd "command yarn $YARN_DEFAULT_OPTS $argv"
	
	eval $cmd
end
