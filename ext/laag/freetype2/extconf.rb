
# -*- ruby -*-

require 'mkmf' # Ruby Standard Library

require 'laag' # MIT License
require_relative '../../../lib/laag/freetype2'

LAAG::BuildEnvironment
  .new(LAAG.freetype2)
  .script { default! }

create_makefile 'laag/freetype2'
