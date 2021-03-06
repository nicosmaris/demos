require 'enablecov'

  class TestMaze < Minitest::Test  
    def test_input_is_parsable
      @g = GraphIO::Maze.new('test/data/right.txt')
      assert @g.start.obj.x==1
      assert @g.start.obj.y==2
      assert @g.goal.obj.x==1
      assert @g.goal.obj.y==5
    end

    def test_initial_output_string
      @g = GraphIO::Maze.new('test/data/right.txt')
      s = @g.get_array_as_string()            # to be displayed at terminal
      assert_equal s, """Start of Maze -------
######
##0115
######
End of Maze ---------"""
    end
  
  end


