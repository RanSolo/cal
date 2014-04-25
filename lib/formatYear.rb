class Year
  attr_accessor :print_month, :m
  attr_reader :y
  def initialize(y)
    @y = y.to_i
    @m = 0
  end

  def year_header
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    days = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
    if @y < 1800 || @y > 3000
      raise ArgumentError, "not covered"
    else
      print "#{@y}".to_s.center(63) + "\n"
      3.times do |month|
        print months[@m.to_i].center(20) + "  "
        months= months.drop(1)
      end
      print "\n" + "#{days}\n"
      print_first_line+ "\n"
    end
    # print_space_or_linebreak
  end

  def print_first_line
    i = 1, m = 1
    next_nums = []
    3.times do |i|
      first_day_spaces(m)
      m += 1
      i +=1
      next_nums.push(@print_month + 1)
      for num in 1..@print_month
        less_than_10_alignment(num, i)
      end
      # next_nums.drop(3)
      print_space_or_linebreak(i)
    end
    print_body(next_nums)
  end

  def print_body(next_nums)
    i = 1
    10.times do |i|
      range_end = next_nums[i] + 6
      next_nums.push(range_end + 1)
      for num in next_nums[i]..range_end
        if num > 28
          print_to_end(next_nums, i)
          i += 1
        else
          print_sngl_or_dbl_alignment(num, i)
          i += 1
        end
      end
      print_space_or_linebreak(i)
    end
  end

  def print_to_end(next_nums, i)
    j = 1
    k = 0
    ifleap
    line_length = (21 - i)
    6.times do |k|
      k += 1
      month_length = ifleap[k]
      for num in next_nums[i]..month_length
        print_sngl_or_dbl_alignment(num, i)
        i += 1
      end
    end
    print_space_or_linebreak(k)
    line_length.times{print " "}
    # j += 1
    year_header_baller_shot_caller
  end

  def year_header_baller_shot_caller
    if @m == 9
      return
    else
  print "((((((((((((((((#{@i}))))))))))))))))"
  @m += 3
  year_header
end
end
  #__________helper functions__________
  def first_day_spaces(m)
    first_day = Zeller.find_weekday(m, @y)
    index_of_first_day = [18, 0, 3, 6, 9, 12, 15]
    line_no = index_of_first_day[first_day.to_i]
    line_no.times{print " "}
    print_month = (21-line_no)/3
    @print_month= print_month
  end

  def print_sngl_or_dbl_alignment(num, i)
    if num < 10
      print " ", num, " "
      num +=  1
    else
      print num, " "
      num +=  1
    end
  end

  def print_space_or_linebreak(i)
    if i%3 == 0
      print "\n"
    # elsif i%4 == 0
      print " "
    end
  end

  def ifleap
    if @y%4 == 0 && @y%100 == 0 && @y%400 == 0
      [31,29,31,30,31,30,31,31,30,31,30,31]
   else
     [31,28,31,30,31,30,31,31,30,31,30,31]
   end
  end
end
