import cn.kotliner.native.*

fun main(args: Array<String>) {
    printHello()
    (1..5).map(::factorial).forEach(::println)
}