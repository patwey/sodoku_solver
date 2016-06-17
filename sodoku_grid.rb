class SodokuGrid
  attr_reader :grid

  def initialize(grid = blank_grid)
    @grid = grid
  end

  def blank_grid
    [
      [
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
      ],
      [
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
      ],
      [
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
        [nil,nil,nil],[nil,nil,nil],[nil,nil,nil],
      ]
    ]
  end

  # Box Methods
  def top_left_box
    get_box(0, 0)
  end

  def top_mid_box
    get_box(0, 1)
  end

  def top_right_box
    get_box(0, 2)
  end

  def mid_left_box
    get_box(1, 0)
  end

  def mid_mid_box
    get_box(1, 1)
  end

  def mid_right_box
    get_box(1, 2)
  end

  def bot_left_box
    get_box(2, 0)
  end

  def bot_mid_box
    get_box(2, 1)
  end

  def bot_right_box
    get_box(2, 2)
  end

  def get_box(box_row, box_top_row)
    (@grid[box_row][box_top_row] +
     @grid[box_row][box_top_row + 3] +
     @grid[box_row][box_top_row + 6]).flatten
  end

  # Row Methods
  def top_top_row
    get_row(0, 0)
  end

  def top_mid_row
    get_row(0, 3)
  end

  def top_bot_row
    get_row(0, 6)
  end

  def mid_top_row
    get_row(1, 0)
  end

  def mid_mid_row
    get_row(1, 3)
  end

  def mid_bot_row
    get_row(1, 6)
  end

  def bot_top_row
    get_row(2, 0)
  end

  def bot_mid_row
    get_row(2, 3)
  end

  def bot_bot_row
    get_row(2, 6)
  end

  def get_row(box_row, row_left_third)
    (@grid[box_row][row_left_third] +
     @grid[box_row][row_left_third + 1] +
     @grid[box_row][row_left_third + 2]).flatten
  end

  # Column Methods
  def left_left_col
    get_col(0, 0)
  end


  def left_mid_col
    get_col(0, 1)
  end

  def left_right_col
    get_col(0, 2)
  end

  def mid_left_col
    get_col(1, 0)
  end

  def mid_mid_col
    get_col(1, 1)
  end

  def mid_right_col
    get_col(1, 2)
  end

  def right_left_col
    get_col(2, 0)
  end

  def right_mid_col
    get_col(2, 1)
  end

  def right_right_col
    get_col(2, 2)
  end

  def get_col(vertical_third, triplet_third)
    [
      @grid[0][vertical_third][triplet_third],
      @grid[0][vertical_third + 3][triplet_third],
      @grid[0][vertical_third + 6][triplet_third],
      @grid[1][vertical_third][triplet_third],
      @grid[1][vertical_third + 3][triplet_third],
      @grid[1][vertical_third + 6][triplet_third],
      @grid[2][vertical_third][triplet_third],
      @grid[2][vertical_third + 3][triplet_third],
      @grid[2][vertical_third + 6][triplet_third]
    ]
  end
end
