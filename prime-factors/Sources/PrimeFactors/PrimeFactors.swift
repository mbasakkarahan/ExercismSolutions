//Solution goes in Sources
 
class PrimeFactors {
    var toArray = [Int]()

    init(_ number: Int){
            var tmp = number
            var divisor = 2
            while(tmp > 1){
                if(tmp % divisor == 0){
                    tmp = tmp / divisor
                    toArray.append(divisor)
                }
                else{
                    divisor += 1
                }
            }
    }
}
