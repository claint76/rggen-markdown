# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rggen/markdown/version'

Gem::Specification.new do |spec|
  spec.name = 'rggen-markdown'
  spec.version = RgGen::Markdown::VERSION
  spec.authors = ['Taichi Ishitani']
  spec.email = ['rggen@googlegroups.com']

  spec.summary = "rggen-markdown-#{RgGen::Markdown::VERSION}"
  spec.description = <<~'DESCRIPTION'
    Markdown generator for RgGen.
  DESCRIPTION
  spec.homepage = 'https://github.com/rggen/rggen-markdown'
  spec.license = 'MIT'

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/rggen/rggen-markdown/issues',
    'mailing_list_uri' => 'https://groups.google.com/d/forum/rggen',
    'source_code_uri' => 'https://github.com/rggen/rggen-markdown',
    'wiki_uri' => 'https://github.com/rggen/rggen/wiki'
  }

  spec.files =
    `git ls-files lib LICENSE CODE_OF_CONDUCT.mkd README.md`.split($RS)
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.4'

  spec.add_development_dependency 'bundler'
end
