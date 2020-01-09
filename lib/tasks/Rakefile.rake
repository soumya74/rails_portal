# Rakefile
task default: :build

task :build do
    puts "Building mypackage-0.0.0"
    # `dpkg -b ./mypackage-0.0.0 ./mypackage-0.0.0.deb`
    # sh "rails s -p 3333"
end
