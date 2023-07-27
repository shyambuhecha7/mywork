package com.example.myapplication

class Practice2 {

}
class Test {

}
class Mobile() {
    val a: Int = 1
    constructor(model: String): this(){

    }
}
object Singleton {

}


fun main() {
    val mobile = Mobile()
    val t = Test()
    val  t2 = t
//obj exp.
    val ObjExp = object {
        val hello = " hello"
        fun printHello() {
            println(hello)
        }

    }
    println(t === t2)
    ObjExp.printHello()

    val list = listOf<Int>(1,2,3,4,5,6,7,8)
    for (i in 1..list.size-1) {
        println(i)
    }
    for (i in 8 downTo 2) {
        println(i)
    }
    for( i in 10 until 20) {
        println(i)
    }
    for (i in 21..29 step 3){
        println(i)
    }

}