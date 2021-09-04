#!/usr/bin/env kscript
// https://mockk.io/

@file:DependsOn("io.mockk:mockk:1.10.0")

import io.mockk.mockk
import io.mockk.every
import io.mockk.verify
import io.mockk.confirmVerified

class Car {
    fun drive(s:String):String {
        return ""
    }
}

val car = mockk<Car>()

every { car.drive("Direction.NORTH") } returns "Outcome.OK"

val result = car.drive("Direction.NORTH")
println(result)

verify { car.drive("Direction.NORTH") }

confirmVerified(car)