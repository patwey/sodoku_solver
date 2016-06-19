class SodokuSolver
  attr_accessor :grid

  def initialize(grid)
    @grid = grid
  end

  def complete_set(set)
    missing_nums = missing_numbers(set)
    if missing_nums.size == 1
      missing_n = missing_nums.pop
      fill_empty_square(missing_n, set)
    end
    set
  end

  def missing_numbers(set)
    completed_set - set
  end

  def completed_set
    [1,2,3,4,5,6,7,8,9]
  end

  def fill_using_context(box, box_location)
    missing_numbers(box).each do |missing_n|
      mark_possible_squares(missing_n, box, box_location)
      fill_marked_square(missing_n, box) if one_marked_square?(box)
      unmark_squares(box)
    end
    box
  end

  def mark_possible_squares(n, box, box_location)
    box.each_with_index do |_, idx|
      # TODO: Better name for 'intersection'?
      intersection = get_square_intersection(idx, box_location)

      unless intersection.include?(n)
        mark_square(idx, box)
      end
    end

    box
  end

  def get_square_intersection(idx, box_location)
    row = get_row(idx, box_location)
    col = get_col(idx, box_location)

    row + col
  end

  # TODO: Split box_location apart into relevant info, standardize a way of getting rows and columns using #send?
  # TODO: Reuse more logic in these repetitive methods
  def get_row(idx, box_location)
    case box_location
    when :bot_left
      # TODO: Use methods to name these bits of logic
      if idx < 3
        grid.bot_top_row
      elsif idx < 6
        grid.bot_mid_row
      else
        grid.bot_bot_row
      end
    when :mid_mid
      if idx < 3
        grid.mid_top_row
      elsif idx < 6
        grid.mid_mid_row
      else
        grid.mid_bot_row
      end
    end
  end

  def get_col(idx, box_location)
    case box_location
    when :bot_left
      # TODO: Use methods to name these bits of logic
      if [0, 3, 6].include?(idx)
        grid.left_left_col
      elsif [1, 4, 7].include?(idx)
        grid.left_mid_col
      else
        grid.left_right_col
      end
    when :mid_mid
      if [0, 3, 6].include?(idx)
        grid.mid_left_col
      elsif [1, 4, 7].include?(idx)
        grid.mid_mid_col
      else
        grid.mid_right_col
      end
    end
  end

  def one_marked_square?(box)
    box.count('X') == 1
  end

  # TODO: Standardize order of idx, set, box, etc
  # TODO: Choose 'set' or 'box'
  def fill_square(n, set, idx)
    set[idx] = n
  end

  def fill_empty_square(n, set)
    fill_square(n, set, set.index(0))
  end

  def fill_marked_square(n, set)
    fill_square(n, set, set.index('X'))
  end

  def mark_square(idx, box)
    box[idx] = 'X' if box[idx] == 0
  end

  def unmark_squares(box)
    box.map! { |n| n == 'X' ? 0 : n }
  end
end
