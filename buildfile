require 'support/scala_spec'
repositories.remote << "http://www.ibiblio.org/maven2/"
repositories.remote << "http://scala-tools.org/repo-releases/"

desc "The scala-buildr-base project"
define "scala-buildr" do
  project.version = "1.0.0"
  project.group = "scala-buildr-base"
  test.using :scalaspec
  manifest['Main-Class'] = 'app'
  package :jar
end
