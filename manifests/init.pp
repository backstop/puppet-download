define download ($url, $timeout = 300) {
	exec { "download ${url}":
		path    => [ '/bin', '/usr/bin' ],
		command => "wget -q '${url}' -O ${name}",
		creates => $name,
		timeout => $timeout,
	}
}
