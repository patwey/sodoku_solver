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
end
