Pod::Spec.new do |spec|

 	spec.name     = 'Argon2'
 	spec.version  = '1.2'
 	spec.license  = { :type => 'Apache License 2.0',
	                  :file => 'License.txt' }
 	spec.homepage = 'https://github.com/cute/Argon2'
	spec.authors  = {
						'Daniel Dinu' => 'daniel@danieldinu.com',
						'Dmitry Khovratovich' => 'khovratovich@gmail.com',
						'Jean-Philippe Aumasson' => 'jeanphilippe.aumasson@gmail.com',
						'Samuel Neves' => 'samuel.c.p.neves@gmail.com',
					 }
	spec.summary  = 'Argon2 reference source code package - reference C implementations.'
	spec.source   = { :git => 'https://github.com/cute/Argon2.git',
	                  :tag => "Releases/#{spec.version}", :submodules => true }

	spec.source_files         = "phc-winner-argon2/include/argon2.h",
	                            "phc-winner-argon2/src/argon2.c",
	                            "phc-winner-argon2/src/core.{c,h}",
	                            "phc-winner-argon2/src/thread.{c,h}",
	                            "phc-winner-argon2/src/encoding.{c,h}",
	                            "phc-winner-argon2/src/blake2/*.{c,h}"

	spec.osx.source_files     = "phc-winner-argon2/src/opt.c"
	spec.ios.source_files     = "phc-winner-argon2/src/ref.c"
	spec.tvos.source_files    = "phc-winner-argon2/src/ref.c"
	spec.watchos.source_files = "phc-winner-argon2/src/ref.c"
	spec.public_header_files  = 'phc-winner-argon2/include/*.h'

	spec.requires_arc   = true
	spec.compiler_flags = '-O3'
	spec.framework      = 'Foundation'
end
