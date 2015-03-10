object Problem003 extends App {
  def getFactors(n: Long) : Seq[Long] = {
    (2L to math.sqrt(n.toDouble).toLong).filter(n % _ == 0d)
  }

  def isPrime(n : Long) : Boolean = {
    getFactors(n).isEmpty
  }

  println(getFactors(600851475143L).filter(isPrime).max)
}