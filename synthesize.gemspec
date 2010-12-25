Gem::Specification.new do |s|
	s.name = %q{Synthesize}
	s.version = "0.1"
	s.required_rubygems_version = Gem::Requirement.new(">= 1.3") if s.respond_to? :required_rubygems_version=
	s.authors = ["James Whayman"]
	s.date = %q{2010-12-25}
	s.description = %q{Produces basic waveforms, sine, square, sawtooth, triangle. White noise and silence included free!}
	s.email = %q{whayman.jw@gmail.com}
	s.homepage = %q{https://github.com/jwhayman/rSynthesize}
	s.rubyforge_project = %q{synthesize}
	s.rubygems_version = %q{1.3.7}
	s.summary = %q{Generate basic waveforms (sine, square, sawtooth, triangle), white noise and silence}
	
	if s.respond_to? :specification_version then
		current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
		s.specification_version = 3
	end
end