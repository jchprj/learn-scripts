#!/usr/bin/env kscript
// https://www.baeldung.com/kotlin/assertfailswith

import io.kotlintest.shouldBe
import io.kotlintest.shouldNotBe
import io.kotlintest.specs.StringSpec
import org.junit.jupiter.api.assertThrows

class TestSpec: StringSpec({
    "it should pass" {
        val abc = "abc"
        abc shouldBe "abc"
    }
    
    // "it should not pass" {
    //     val abc = "abc"
    //     abc shouldNotBe "abc"
    // }

    "it should throw exception" {
        assertThrows<ArrayIndexOutOfBoundsException> {
            val array = intArrayOf(1, 2, 3)
            array[5]
        }
    }
})