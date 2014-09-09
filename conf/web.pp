Package { ensure => "installed" }

package {[
#"nodejs",
"npm",
"nodejs-legacy"
]:
}

package { ["compass", "sass"]:
	ensure => 'installed',
	provider => 'gem'
}
