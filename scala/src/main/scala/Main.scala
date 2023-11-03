@main def hello: Unit =
  val g = Greeter("Ola, ", "!")
  g.greet("Joao")

  // instanciando uma case class
  val point = Point(2, 2)
  val anotherPoint = Point(2, 2)
  val yetAnotherPoint = Point(4, 4)

  if point == anotherPoint then
    println(s"$point and $anotherPoint are the same")
  else println(s"$point and $anotherPoint are different")

  if yetAnotherPoint == point then
    println(s"$yetAnotherPoint and $point are the same")
  else println(s"$yetAnotherPoint and $point are different")

  object idFactory:
    private var counter = 0
    def create(): Int =
      counter += 1
      counter

  val newId = idFactory.create()
  println(s"criando um novo id usando o object idFactory: $newId")
  val newerId = idFactory.create()
  println(s"criando um id ainda mais novo usando o object idFactory: $newerId")

  // instanciando a classe que extende uma trait
  val a = DefaultTrait()
  a.greet("Scala developer")

  val t = Customizable("Hello ", " !")
  t.greet("Joao")

class Greeter(prefix: String, suffix: String):
  def greet(name: String) =
    println(prefix + name + suffix)

case class Point(x: Int, y: Int)

/** Traits are abstract data types containing certain fields and methods. In
  * Scala inheritance, a class can only extend one other class, but it can
  * extend multiple traits.
  */

trait Greet:
  def greet(name: String): Unit

class DefaultTrait extends Greet:
  override def greet(name: String): Unit = println(name)

class Customizable(prefix: String, postfix: String) extends Greet:
  override def greet(name: String): Unit = println(prefix + name + postfix)
