object P001 {
  def main(args: Array[String]) {
    println((1 to 999).filter(x => x % 3 == 0 || x % 5 == 0).sum)
  }
}
