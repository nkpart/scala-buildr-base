import org.specs.Specification
import org.specs.runner.JUnit4
import org.specs._
import org.scalacheck.Prop._
import org.scalacheck._

// Creating specs
// - create an object that extends Specification (with Scalacheck if you want that jazz)
// - create a class that matches /.*Test/, as defined in support/scala_spec.rb, that extends JUnit4(YourSpecObject)
class TruthinessTest extends JUnit4(Truthiness) {}
object Truthiness extends Specification { // with Scalacheck
  "truthiness" in {
    false mustBe true
  }
}
