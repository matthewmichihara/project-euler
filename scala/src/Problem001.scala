object Problem001 extends App {
  println((1 to 999).filter(x => x % 3 == 0 || x % 5 == 0).sum)
}
