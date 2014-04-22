Package { ensure => "installed" }

package {[
#"nodejs",
"npm"
]:
}

package { ["compass", "sass"]:
	ensure => 'installed',
	provider => 'gem'
}
