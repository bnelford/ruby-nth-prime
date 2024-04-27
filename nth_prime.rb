class Prime
    def self.nth index
        if index < 1
            raise ArgumentError
        end
        primes = Array.[](2)
        while primes.length < index do
            curr_num = primes[-1]
            primes = primes + [get_next_prime(curr_num)]
        end
        return primes[index-1]
    end

    def self.get_next_prime prime
        number = prime+1
        while is_prime(number)==false do
            number = number + 1
        end
        return number
    end

    def self.is_prime num 
        iterator = num - 1
        while iterator > 1 do
            if num % iterator == 0
                return false
            end
            iterator = iterator - 1
        end
        return true
    end
end
module BookKeeping
    VERSION = 1
end