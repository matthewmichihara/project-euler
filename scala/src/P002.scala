object P002 {
  def main(args: Array[String]) {
    lazy val fibs: Stream[BigInt] = BigInt(1) #:: BigInt(2) #:: fibs.zip(fibs.tail).map { n => n._1 + n._2 }
    println(fibs.takeWhile(_ < 4000001).filter { _ % 2 == 0 }.sum)
  }
}
