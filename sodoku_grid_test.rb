require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'sodoku_grid'

class SodokuGridTest < Minitest::Test
  def setup
    @sodoku_grid = SodokuGrid.new(setup_grid)
  end

  def test_it_has_a_grid
    assert @sodoku_grid.grid
  end

  # Box Tests
  def test_it_has_a_top_left_box
    expected_top_left_box = [1,2,3,10,11,12,19,20,21]

    assert_equal expected_top_left_box, @sodoku_grid.top_left_box
  end

  def test_it_has_a_top_mid_box
    expected_top_mid_box = [4,5,6,13,14,15,22,23,24]

    assert_equal expected_top_mid_box, @sodoku_grid.top_mid_box
  end

  def test_it_has_a_top_right_box
    expected_top_right_box = [7,8,9,16,17,18,25,26,27]

    assert_equal expected_top_right_box, @sodoku_grid.top_right_box
  end

  def test_it_has_a_mid_left_box
    expected_mid_left_box = [28,29,30,37,38,39,46,47,48]

    assert_equal expected_mid_left_box, @sodoku_grid.mid_left_box
  end

  def test_it_has_a_mid_mid_box
    expected_mid_mid_box = [31,32,33,40,41,42,49,50,51]

    assert_equal expected_mid_mid_box, @sodoku_grid.mid_mid_box
  end

  def test_it_has_a_mid_right_box
    expected_mid_right_box = [34,35,36,43,44,45,52,53,54]

    assert_equal expected_mid_right_box, @sodoku_grid.mid_right_box
  end

  def test_it_has_a_bot_left_box
    expected_bot_left_box = [55,56,57,64,65,66,73,74,75]

    assert_equal expected_bot_left_box, @sodoku_grid.bot_left_box
  end

  def test_it_has_a_bot_mid_box
    expected_bot_mid_box = [58,59,60,67,68,69,76,77,78]

    assert_equal expected_bot_mid_box, @sodoku_grid.bot_mid_box
  end

  def test_it_has_a_bot_right_box
    expected_bot_right_box = [61,62,63,70,71,72,79,80,81]

    assert_equal expected_bot_right_box, @sodoku_grid.bot_right_box
  end

  # Row Tests
  def test_it_has_a_top_top_row
    expected_top_top_row = [1,2,3,4,5,6,7,8,9]

    assert_equal expected_top_top_row, @sodoku_grid.top_top_row
  end

  def test_it_has_a_top_mid_row
    expected_top_mid_row = [10,11,12,13,14,15,16,17,18]

    assert_equal expected_top_mid_row, @sodoku_grid.top_mid_row
  end

  def test_it_has_a_top_bot_row
    expected_top_bot_row = [19,20,21,22,23,24,25,26,27]

    assert_equal expected_top_bot_row, @sodoku_grid.top_bot_row
  end

  def test_it_has_a_mid_top_row
    expected_mid_top_row = [28,29,30,31,32,33,34,35,36]

    assert_equal expected_mid_top_row, @sodoku_grid.mid_top_row
  end

  def test_it_has_a_mid_mid_row
    expected_mid_mid_row = [37,38,39,40,41,42,43,44,45]

    assert_equal expected_mid_mid_row, @sodoku_grid.mid_mid_row
  end

  def test_it_has_a_mid_bot_row
    expected_mid_bot_row = [46,47,48,49,50,51,52,53,54]

    assert_equal expected_mid_bot_row, @sodoku_grid.mid_bot_row
  end

  def test_it_has_a_bot_top_row
    expected_bot_top_row = [55,56,57,58,59,60,61,62,63]

    assert_equal expected_bot_top_row, @sodoku_grid.bot_top_row
  end

  def test_it_has_a_bot_mid_row
    expected_bot_mid_row = [64,65,66,67,68,69,70,71,72]

    assert_equal expected_bot_mid_row, @sodoku_grid.bot_mid_row
  end

  def test_it_has_a_bot_bot_row
    expected_bot_bot_row = [73,74,75,76,77,78,79,80,81]

    assert_equal expected_bot_bot_row, @sodoku_grid.bot_bot_row
  end

  # Column Tests
  def test_it_has_a_left_left_col
    expected_left_left_col = [1,10,19,28,37,46,55,64,73]

    assert_equal expected_left_left_col, @sodoku_grid.left_left_col
  end

  def test_it_has_a_left_mid_col
    expected_left_mid_col = [2,11,20,29,38,47,56,65,74]

    assert_equal expected_left_mid_col, @sodoku_grid.left_mid_col
  end

  def test_it_has_a_left_right_col
    expected_left_right_col = [3,12,21,30,39,48,57,66,75]

    assert_equal expected_left_right_col, @sodoku_grid.left_right_col
  end

  def test_it_has_a_mid_left_col
    expected_mid_left_col = [4,13,22,31,40,49,58,67,76]

    assert_equal expected_mid_left_col, @sodoku_grid.mid_left_col
  end

  def test_it_has_a_mid_mid_col
    expected_mid_mid_col = [5,14,23,32,41,50,59,68,77]

    assert_equal expected_mid_mid_col, @sodoku_grid.mid_mid_col
  end

  def test_it_has_a_mid_right_col
    expected_mid_right_col = [6,15,24,33,42,51,60,69,78]

    assert_equal expected_mid_right_col, @sodoku_grid.mid_right_col
  end

  def test_it_has_a_right_left_col
    expected_right_left_col = [7,16,25,34,43,52,61,70,79]

    assert_equal expected_right_left_col, @sodoku_grid.right_left_col
  end

  def test_it_has_a_right_mid_col
    expected_right_mid_col = [8,17,26,35,44,53,62,71,80]

    assert_equal expected_right_mid_col, @sodoku_grid.right_mid_col
  end

  def test_it_has_a_right_right_col
    expected_right_right_col = [9,18,27,36,45,54,63,72,81]

    assert_equal expected_right_right_col, @sodoku_grid.right_right_col
  end

  # Helper Methods
  def setup_grid
    [
      [
        [1,2,3],   [4,5,6],   [7,8,9],
        [10,11,12],[13,14,15],[16,17,18],
        [19,20,21],[22,23,24],[25,26,27],
      ],
      [
        [28,29,30],[31,32,33],[34,35,36],
        [37,38,39],[40,41,42],[43,44,45],
        [46,47,48],[49,50,51],[52,53,54],
      ],
      [
        [55,56,57],[58,59,60],[61,62,63],
        [64,65,66],[67,68,69],[70,71,72],
        [73,74,75],[76,77,78],[79,80,81],
      ]
    ]
  end
end
