
# -*- ruby -*-

require 'laag/library' # MIT License

module LAAG
  FREETYPE2_GEM_ROOT = File.expand_path(File.join(__dir__, %w[.. ..]))
  FREETYPE2_ORIGIN  = 'git.savannah.nongnu.org/r/freetype/freetype2'
  FREETYPE2_VERSION = (
    $LOADED_FEATURES
      .map { |f| f.match %r{/laag-freetype2-(?<version>[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]+)} }
      .compact
      .map { |gem| gem['version'] }
      .uniq
      .first
  ) || (
    File
      .basename(FREETYPE2_GEM_ROOT)
      .match(%r{^laag-freetype2-(?<version>[[:digit:]]+\.[[:digit:]]+\.[[:digit:]]+)})['version']
  )

  def self.freetype2
    @@freetype2 ||= Library.new(
      gem_root: FREETYPE2_GEM_ROOT,
      origin:   FREETYPE2_ORIGIN,
      version:  FREETYPE2_VERSION
    )
  end
end
