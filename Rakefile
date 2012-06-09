desc "run cucumber features in parallel"
task :default => :parallel

# cucumber needs this
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber, "run cucumber features from command line") do |t|
  t.cucumber_opts = %w{--format progress}
end

desc "run cucumber features in parallel"
task :parallel do
  `parallel_cucumber features/`
end
