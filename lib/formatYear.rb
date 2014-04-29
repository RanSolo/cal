class Year
  attr_accessor :print_month, :m, :months
  attr_reader :y
  def initialize(y)
    @y = y.to_i
    @m = 0
    @m2 = 1
  end
  def print_year
    print "#{@y}".to_s.center(63)+"\n\n"
    year_header
  end

  def year_header
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
    days = "Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa"
    if @y < 1800 || @y > 3000
      raise ArgumentError, "not covered"
    else
      3.times do |month|
        print months[@m.to_i].center(20) + "  "
        months= months.drop(1)
      end
      print "\n" + "#{days}\n"
      print_first_line
    end
  end

  def print_first_line
    i = 1
    next_nums = []
    3.times do |i|
      first_day_spaces
      i +=1
      @m2 += 1 unless @m2 > 12
      next_nums.push(@print_month + 1)
      for num in 1..@print_month
        print_sngl_or_dbl_alignment(num)
      end
      print_space_or_linebreak(i)
    end
  print_body(next_nums)
  end

  def print_body(next_nums)
    i = 1
    k = 0
    9.times do |i|
      range_end = next_nums[i] + 6
      next_nums.push(range_end + 1)
        for num in next_nums[i]..range_end
          print_sngl_or_dbl_alignment(num)
          i += 1
          k +=1
       end
       print_space_or_linebreak(i)
    end
    print_to_end(next_nums)
  end

  def print_to_end(next_nums)
    next_nums = next_nums.drop(9)
    # print "((((((((((((#{next_nums}))))))))))))"
    i = 0
    j = 1
    k = 0
    3.times do |k|
      range_end = next_nums[i] + 6
      next_nums.push(range_end + 1)
      month_length = ifleap[k]
      # if (range_end) === 2

       for num in next_nums[i]..month_length
        print_sngl_or_dbl_alignment(num)
        i += 1
k += 1

      end

      last_day_spaces(next_nums)
print_space_or_linebreak(j)

        j += 1
        print "\n"
        year_header_baller_shot_caller

    end
  # print_space_or_linebreak(j)

  end


  def year_header_baller_shot_caller
    @m = m
    if m < 10
      3.times do |m|
        @m += 3
        print "\n"
        year_header

      end
    else
      @m2 = 1
      @m = 0
      @print_month = nil
    end
  end
      #__________helper functions__________
  def last_day_spaces(next_nums)
    k = 0
    i = 0
    range_end = next_nums[i] + 6
    month_length = ifleap[k]

    last_line = (range_end - month_length) *3

    the_end = []
    the_end.push(range_end)
    last_line.times{print "+"}
    #  next_nums.drop(3)
    # print_to_end(next_nums)


  end

  def first_day_spaces
    first_day = Zeller.find_weekday(@m2, @y)
    index_of_first_day = [18, 0, 3, 6, 9, 12, 15]
    line_no = index_of_first_day[first_day.to_i]
    line_no.times{print " "}
    print_month = (21-line_no)/3
    @print_month= print_month
    if @m2 == 13
      @m2 = 1
    end
  end

  def print_sngl_or_dbl_alignment(num)
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
    else
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
