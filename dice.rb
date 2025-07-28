#scr = 40
    @p1s = 40
    @p2s = 40

def Players
    puts "Player 1"
    p1 = gets.chomp
    puts "Player 2"
    p2 = gets.chomp
end

def bothroll
    @p1r = rand(1..20)
    @p2r = rand(1..20)
end

def test
    bothroll
    puts @p1r
    puts @p2r

    
    def hitlossp1
        if @p1r % 2 == 0
            @p2s -= @p1r
        else
            @p1s -= @p1r
        end
    end

    def hitlossp2
        if @p2r % 2 == 0
            @p1s -= @p2r
        else
            @p2s -= @p2r
        end
    end
hitlossp1
hitlossp2
puts "player 1 #{@p1s}"
puts "player 2 #{@p2s}"
    while @p1s > 0 && @p2s > 0
      test
    end
end
def suddendeath
    if @p1s <= 0 && @p2s <= 0
        @ps1 = 20
        @ps2 = 20
        puts "Sudden death"
        p1sd = rand(1..4) + rand(1..4) + rand(1..4) + rand(1..4)
        p2sd = rand(1..4) + rand(1..4) + rand(1..4) + rand(1..4)
        puts "p1 #{p1sd}"
        puts "p2 #{p2sd}"
        if p1sd > p2sd
            puts "Player 1 wins!"
        elseif p2sd > p1sd
            puts "Player 2 wins!"
        else
            puts "Sudden deathier!!!!"
            suddendeath
        end
    else
        test
    end 

end

test
