class ScalaSpec < TestFramework::Base
  include TestFramework::JavaTest
  REQUIRES = ["org.specs:specs:jar:1.2.9", "junit:junit:jar:4.4", "org.scalacheck:scalacheck:jar:1.3"]

  def tests(dependencies) #:nodoc:
    filter_classes(dependencies, :class_names => [/.*Test/],
                   :interfaces => [] )
  end
   
  def run(tests, dependencies) #:nodoc:
    cmd_args = ['org.junit.runner.JUnitCore']
    cmd_options = { :properties=>options[:properties], :java_args=>options[:java_args], :classpath=>dependencies }
    tests.inject([]) do |passed, test|
      begin
        Java::Commands.java cmd_args, test, cmd_options
        passed << test
      rescue
        passed
      end
    end
  end
  
end

Buildr::TestFramework << ScalaSpec
