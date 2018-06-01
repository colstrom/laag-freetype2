
# -*- ruby -*-

require 'mkmf' # Ruby Standard Library

require 'laag' # MIT License
require_relative '../../../lib/laag/freetype2'

LAAG::BuildEnvironment
  .new(LAAG.freetype2, disable: %w[pre-clean post-clean])
  .script do
  execute! './autogen.sh'
  default!
end

create_makefile 'laag/freetype2'
