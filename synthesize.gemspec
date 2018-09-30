# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{synthesize}
  s.version = "1.1.1"

  s.authors = ["James Whayman"]
  s.date = %q{2018-09-30}
  s.description = %q{Produces basic waveforms, sine, square, sawtooth, triangle. White noise and silence included free!}
  s.email = ["whayman.jw@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README.md", "lib/synthesize.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README.md", "Rakefile", "lib/synthesize.rb", "synthesize.gemspec"]
  s.homepage = %q{https://github.com/jwhayman/rSynthesize}
  s.post_install_message = %q{`'~,.,~'`'~,.,~'`'~,.,~'`'~,.,~'}
  s.require_paths = ["lib"]
  s.summary = %q{Generate basic waveforms (sine, square, sawtooth, triangle), white noise and silence.}

  if s.respond_to?(:metadata)
    s.metadata["allowed_push_host"] = 'https://rubygems.org'
  else
    raise %q{RubyGems 2.0 or newer is required to protect against
      public gem pushes.}
  end

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
end
