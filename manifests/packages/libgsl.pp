# Class: datashield::packages::libgsl
# ===========================
#
# Install libgsl library required for some R packages
#
# Examples
# --------
#
# @example
#    class {datashield::packages::libgsl,
#    }
#
# Authors
# -------
#
# Olly Butters
#

class datashield::packages::libgsl {

  # determine the curl package based on operating syste,
  $libgsl = $::operatingsystem ? {
    'Ubuntu' => 'libgsl-dev',
    default  => 'libgsl-dev',
  }

  package { $libgsl:
    ensure => 'present',
    alias  => 'libcurl',
  }

}
