import java.io.BufferedReader
import java.io.IOException
import java.util.*


val br = System.`in`.bufferedReader()

fun list() = br.readLine().split(" ").map { it.toInt() }.toMutableSet()
fun input() = br.readLine().split(" ")
fun brr() = br.readLine().split(' ').map { it.toInt() }

var result = 0
fun main() = with(System.out.bufferedWriter()) {
    val n = br.readLine().toInt()
    val leftDeck = ArrayDeque<Int>(13)
    val rightDeck = ArrayDeque<Int>(14)
    val Deck = ArrayDeque<Int>(27)
    var jokerPosition = 1
    Deck.add(1)
    for (i in 1 until 27) {
        Deck.add(0)
    }
    repeat(n) {
        for (i in 0 until 13) {
            if (Deck.isNotEmpty()) {
                leftDeck.add(Deck.remove())
            }
        }
        for (i in 0 until 14) {
            if (Deck.isNotEmpty()) {
                rightDeck.add(Deck.remove())
            }
        }
        val shuffle = brr()
        for (i in 0 until shuffle.size) {
            if (i % 2 == 0) {
                for (j in 0 until shuffle[i]) {
                    if (rightDeck.isNotEmpty()) {
                        Deck.add(rightDeck.remove())
                    }
                }
            } else {
                for (j in 0 until shuffle[i]) {
                    if (leftDeck.isNotEmpty()) {
                        Deck.add(leftDeck.remove())
                    }
                }
            }
        }
    }
    val result = Deck.indexOf(1)
    println(result+1)
}