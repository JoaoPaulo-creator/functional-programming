// For more information on writing tests, see
// https://scalameta.org/munit/docs/getting-started.html
class MySuite extends munit.FunSuite {
  test("example test that succeeds") {
    val obtained = 42
    val expected = 42
    assertEquals(obtained, expected)
  }

  test("valida a soma de um numero") {
    val n1 = 2
    val n2 = 2
    assertEquals(n1 + n2, 4)
  }

}
