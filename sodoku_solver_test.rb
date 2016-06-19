require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative 'sodoku_grid'
require_relative 'sodoku_solver'

class SodokuSolverTest < Minitest::Test
  def setup
    @completed_set = [1,2,3,4,5,6,7,8,9]
    @sodoku_solver = SodokuSolver.new(SodokuGrid.new(setup_grid))
    @context_grid = SodokuGrid.new(context_grid)
    @context_solution_grid = SodokuGrid.new(context_solution)
  end

  # Finding Missing Numbers
  def test_it_knows_what_numbers_are_missing_from_a_set
    set = [1,0,3,4,0,6,7,0,9] # 0 denotes empty square
    missing_numbers = [2,5,8]

    assert_equal missing_numbers, @sodoku_solver.missing_numbers(set)
  end

  # Completing A Set
  def test_it_can_complete_a_set_at_the_end
    set = [1,2,3,4,5,6,7,8,0] # 0 denotes empty square
    completed = @sodoku_solver.complete_set(set)

    assert_equal @completed_set, completed
  end

  def test_it_can_complete_a_set_in_the_middle
    set = [1,2,3,4,0,6,7,8,9]
    completed = @sodoku_solver.complete_set(set)

    assert_equal @completed_set, completed
  end

  # Completing Through Context
  def test_it_can_fill_a_square_in_the_bot_left_box_using_context
    solver = SodokuSolver.new(@context_grid)

    expected_box = @context_solution_grid.bot_left_box
    solved_box = solver.fill_using_context(solver.grid.bot_left_box, :bot_left)

    assert_equal expected_box, solved_box
  end

  def test_it_can_fill_a_square_in_the_mid_mid_box_using_context
    solver = SodokuSolver.new(@context_grid)

    expected_box = @context_solution_grid.mid_mid_box
    solved_box = solver.fill_using_context(solver.grid.mid_mid_box, :mid_mid)

    assert_equal expected_box, solved_box
  end

  # Helper Methods
  def setup_grid
    [
      [
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0]
      ],
      [
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0]
      ],
      [
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0]
      ]
    ]
  end

  def context_grid
    [
      [
        [1,0,0],[0,0,9],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0]
      ],
      [
        [9,0,0],[0,0,0],[0,0,0],
        [0,0,1],[0,0,0],[0,0,9],
        [0,0,0],[0,0,0],[0,0,0]
      ],
      [
        [0,0,0],[0,1,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,9,0],[0,1,0]
      ]
    ]
  end

  def context_solution
    [
      [
        [1,0,0],[0,0,9],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0],
        [0,0,0],[0,0,0],[0,0,0]
      ],
      [
        [9,0,0],[0,0,0],[0,0,0],
        [0,0,1],[0,0,0],[0,0,9],
        [0,0,0],[9,0,0],[0,0,0]
      ],
      [
        [0,0,0],[0,1,0],[0,0,0],
        [0,1,0],[0,0,0],[0,0,0],
        [0,0,0],[0,9,0],[0,1,0]
      ]
    ]
  end
end
