# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{synthesize}
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Whayman"]
  s.date = %q{2010-12-25}
  s.description = %q{Produces basic waveforms, sine, square, sawtooth, triangle. White noise and silence included free!}
  s.email = %q{whayman.jw@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README", "lib/synthesize.rb"]
  s.files = ["CHANGELOG", "LICENSE", "Manifest", "README", "Rakefile", "lib/synthesize.rb", "synthesize.gemspec"]
  s.homepage = %q{https://github.com/jwhayman/rSynthesize}
  s.post_install_message = %q{`'~,.,~'`'~,.,~'`'~,.,~'`'~,.,~'}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Synthesize", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{synthesize}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Generate basic waveforms (sine, square, sawtooth, triangle), white noise and silence.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
