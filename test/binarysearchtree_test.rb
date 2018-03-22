require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/binary_search_tree'
require './lib/node'

class DateNightTest < MiniTest::Test

  def setup
    @tree = BinarySearchTree.new
    @movies_list = {98 => ["Animals United", 0],
      58 => ["Armegeddon", 1],
      36 => ["Bill and Ted's Bogus Journey", 2],
      93 => ["Bill and Ted's Excellent Adventure", 3],
      86 => ["Charlie's Angels", 4],
      38 => ["Charlie's Country"],
      69 => ["Collateral Damage", 5]}
  end

  def test_tree_exists
    assert_instance_of BinarySearchTree, @tree
  end

  def test_root_node_starts_as_nil
    assert_nil nil, @root
  end

  def test_it_can_insert_root_node
    head = @tree.insert(98, "Animals United")

    assert_instance_of Node, head
    assert_equal 98, head.score
    assert_equal "Animals United", head.title
    assert_nil nil, head.node_left
    assert_nil nil, head.node_right
  end

  def test_insert_node_and_find_its_depth
    @tree.insert(98, "Animals United")
    @tree.depth_of(98)
    binding.pry
    assert_equal 0, result
    refute_equal 1, result
  end

  def test_node_depth
    skip
    depth1 = tree.insert(50, "Movie Title")
    depth2 = tree.insert(75, "Another Movie Title")
    assert_equal 0, depth1
    assert_equal 1, depth2
  end

 def test_min_returns_movie_with_lowest_score
   skip
   tree.insert(50, "Movie Title")
   tree.insert(75, "Another Movie Title")
   tree.insert(25, "This One Movie")
   expected = {"This One Movie" => 25}
   actual = tree.min
   assert_equal expected, actual
 end

 def test_max_returns_movie_with_highest_score
   skip
   tree.insert(50, "Movie Title")
   tree.insert(75, "Another Movie Title")
   tree.insert(25, "This One Movie")
   expected = {"Another Movie Title" => 75}
   actual = tree.max
   assert_equal expected, actual
 end

  def test_sort_returns_array_of_movies_in_ascending_order
    skip
    tree.insert(50, "Movie Title")
    tree.insert(75, "Another Movie Title")
    tree.insert(25, "This One Movie")
    expected = [{"This One Movie" => 25}, {"Movie Title" => 50}, {"Another Movie Title" => 75}]
    assert_equal expected, actual
  end


  # def test_include_searches_tree
  #
  # end
  #
  # def test_depth_of_tree
  #
  # end
  #
  # def test_max_returns_movie_with_highest_score
  #
  # end
  #
  # def test_min_returns_movie_with_lowest_score
  #
  # end
  #
  # def test_sort_returns_array_of_movies_in_ascending_order
  #
  # end
  #
  # def test_load_returns_number_of_movies_in_tree
  #
  # end
  #
  # def test_health_returns_score_of_the_node
  #
  # end
  #
  # def test_health_returns_number_of_child_nodes
  #
  # end
  #
  # def test_health_returns_percentage_of_all_nodes_that_are_its_children
  #
  # end
  #
  # def test_delete_removes_the_node
  #
  # end

end
