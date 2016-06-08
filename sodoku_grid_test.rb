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

  def test_it_has_a_top_left_box
    expected_top_left_box = [1,2,3,10,11,12,19,20,21]

    assert_equal expected_top_left_box, @sodoku_grid.top_left_box
  end

  def test_it_has_a_top_middle_box
    expected_top_middle_box = [4,5,6,13,14,15,22,23,24]

    assert_equal expected_top_middle_box, @sodoku_grid.top_middle_box
  end

  def test_it_has_a_top_right_box
    expected_top_right_box = [7,8,9,16,17,18,25,26,27]

    assert_equal expected_top_right_box, @sodoku_grid.top_right_box
  end

  def test_it_has_a_middle_left_box
    expected_middle_left_box = [28,29,30,37,38,39,46,47,48]

    assert_equal expected_middle_left_box, @sodoku_grid.middle_left_box
  end

  def test_it_has_a_middle_middle_box
    expected_middle_middle_box = [31,32,33,40,41,42,49,50,51]

    assert_equal expected_middle_middle_box, @sodoku_grid.middle_middle_box
  end

  def test_it_has_a_middle_right_box
    expected_middle_right_box = [34,35,36,43,44,45,52,53,54]

    assert_equal expected_middle_right_box, @sodoku_grid.middle_right_box
  end

  def test_it_has_a_bottom_left_box
    expected_bottom_left_box = [55,56,57,64,65,66,73,74,75]

    assert_equal expected_bottom_left_box, @sodoku_grid.bottom_left_box
  end

  def test_it_has_a_bottom_middle_box
    expected_bottom_middle_box = [58,59,60,67,68,69,76,77,78]

    assert_equal expected_bottom_middle_box, @sodoku_grid.bottom_middle_box
  end

  def test_it_has_a_bottom_right_box
    expected_bottom_right_box = [61,62,63,70,71,72,79,80,81]

    assert_equal expected_bottom_right_box, @sodoku_grid.bottom_right_box
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
