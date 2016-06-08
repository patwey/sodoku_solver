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

  def top_middle_box
    get_box(0, 1)
  end

  def top_right_box
    get_box(0, 2)
  end

  def middle_left_box
    get_box(1, 0)
  end

  def middle_middle_box
    get_box(1, 1)
  end

  def middle_right_box
    get_box(1, 2)
  end

  def bottom_left_box
    get_box(2, 0)
  end

  def bottom_middle_box
    get_box(2, 1)
  end

  def bottom_right_box
    get_box(2, 2)
  end

  def get_box(box_row, box_top_row)
    (@grid[box_row][box_top_row] +
     @grid[box_row][box_top_row + 3] +
     @grid[box_row][box_top_row + 6]).flatten
  end
end
