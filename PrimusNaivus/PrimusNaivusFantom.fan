#! /usr/bin/env fan

// 900ms

class PrimusNaivusFan {

    static Bool isPrime(Int x, Int[] primes) {
        return null == primes.find |p| { x % p == 0 }
    }

    static Int[] findPrimes(Int index) {
        primes := [,]
        for (candidate := 2; primes.size < index; candidate++)
            if (isPrime(candidate, primes))
                primes.add(candidate)
        return primes
    }

    static Void main() {

        tic := DateTime.now
        primes := findPrimes(2000)
        toc := DateTime.now - tic
        echo("Elapsed time: " + toc)
        echo(primes.last)
    } 
}
