class BankAccount

  def initialize
    @checking_balance = 100
    @savings_balance = 100
    @interest_rate = 0.10
  end

  private
    def account_number
      random_number = Random.new.rand(10000000)
      puts random_number
    end
  def return_checking_balance
    puts "Checking Account: #{@checking_balance}"
  end
  def return_saving_balance
    puts "Saving Account: #{@savings_balance}"
  end
  def deposit(num, account)
    if account == "savings"
      @savings_balance += num
    elsif account == "checking"
      @checking_balance += num
    else
      puts "Sorry your deposit cannot be completed please try again"
    end
  end
  def withdraw(amount, account)
    if account == "savings"
      if (@savings_balance - amount) < 0
        puts "Sorry you have insufficient funds"
      else
        @savings_balance -= amount
      end
    elsif account == "checking"
      if (@checking_balance - amount) < 0
        puts "Sorry you have insufficient funds"
      else
        @checking_balance -= amount
      end
    else
      puts "Sorry your withdraw cannot be completed please try again"
    end
  end
end