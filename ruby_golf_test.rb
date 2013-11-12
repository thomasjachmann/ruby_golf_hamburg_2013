require "minitest/autorun"
require "ruby_golf"

class RubyGolfTest < Minitest::Test

  i_suck_and_my_tests_are_order_dependent!


  ##############################################################################
  # Hole 1: RubyGolf.x_out_numbers                                             #
  ##############################################################################

  def test_x_out_numbers_1
    assert_equal "xxxxx678", RubyGolf.x_out_numbers("12345678", 3)
  end

  def test_x_out_numbers_2
    assert_equal "4783", RubyGolf.x_out_numbers("4783", 4)
  end

  def test_x_out_numbers_3
    assert_equal "394", RubyGolf.x_out_numbers("394", 5)
  end


  ##############################################################################
  # Hole 2: RubyGolf.underscore                                                #
  ##############################################################################

  def test_underscore_1
    assert_equal "", RubyGolf.underscore("")
  end

  def test_underscore_2
    assert_equal 'camel_case', RubyGolf.underscore('camelCase')
    assert_equal 'abstract_bean_converter_vistor_factory_service', RubyGolf.underscore('AbstractBeanConverterVistorFactoryService')
  end

  def test_underscore_3
    assert_equal 'mumbo_jambo', RubyGolf.underscore('Mumbo-Jambo')
  end


  ##############################################################################
  # Hole 3: RubyGolf.symbolize_keys                                            #
  ##############################################################################

  def test_symbolize_keys_1
    input = {
      'foo' => 42,
      'bar' => 'Schinken',
      'baz' => nil
    }
    expected = {
      foo: 42,
      bar: 'Schinken',
      baz: nil
    }
    assert_equal expected, RubyGolf.symbolize_keys(input)
  end

  def test_symbolize_keys_2
    input = {
      'foo' => 42,
      'childhash1' => {
        'luke' => 'Skywalker',
        'Obi-Wan'  => 'Kenobi'
      },
      'childhash2' => {}
    }
    expected = {
      foo: 42,
      childhash1: {
        luke: 'Skywalker',
        :'Obi-Wan' => 'Kenobi'
      },
      childhash2: {}
    }
    assert_equal expected, RubyGolf.symbolize_keys(input)
  end


  ##############################################################################
  # Hole 4: RubyGolf.grid_computing                                            #
  ##############################################################################

  def test_grid_computing
    assert_equal 14,  RubyGolf.grid_computing("14\n"), "1x1"
    assert_equal 35,  RubyGolf.grid_computing("14 20\n10 15\n"), "2x2 col"
    assert_equal 124, RubyGolf.grid_computing("25 99\n10 18"), "2x2 row"
    assert_equal 550, RubyGolf.grid_computing("01 34 46 31 55 21 16 88 87 87\n32 40 82 40 43 96 08 82 41 86\n"), "10x2"
    ten_by_ten = <<EOG
01 34 46 31 55 21 16 88 87 87
32 40 82 40 43 96 08 82 41 86
30 16 24 18 04 54 65 96 38 48
32 00 99 90 24 75 89 41 04 01
11 80 31 83 08 93 37 96 27 64
09 81 28 41 48 23 68 55 86 72
64 61 14 55 33 39 40 18 57 59
49 34 50 81 85 12 22 54 80 76
18 45 50 26 81 95 25 14 46 75
22 52 37 50 37 40 16 71 52 17
EOG
    assert_equal 615, RubyGolf.grid_computing(ten_by_ten), "10x10"
  end


  ##############################################################################
  # Hole 5: RubyGolf.reformat_hash                                             #
  ##############################################################################

  def test_reformat_hash_1
    assert_equal '{}', RubyGolf.reformat_hash('{}')
    assert_equal '{  }', RubyGolf.reformat_hash('{  }')
  end

  def test_reformat_hash_2
    assert_equal '{elf: 11}', RubyGolf.reformat_hash('{:elf => 11}')
    assert_equal '{key: :key}', RubyGolf.reformat_hash('{:key => :key}')
    assert_equal '{style: "display: none"}', RubyGolf.reformat_hash('{:style => "display: none"}')
  end

  def test_reformat_hash_3
    assert_equal '{:"data-value" => "alt", new: "neu"}', RubyGolf.reformat_hash('{:"data-value" => "alt", :new => "neu"}')
  end


  ##############################################################################
  # Hole 6: RubyGolf.pretty_hash                                               #
  ##############################################################################

  def test_pretty_hash_1
    input = {"wodka" => %w(energy cranberry orange), "whiskey" => %w(cola lime)}
    expected = <<EOS
wodka:
- energy
- cranberry
- orange
whiskey:
- cola
- lime
EOS
    assert_equal expected, RubyGolf.pretty_hash(input)
  end

  def test_pretty_hash_2
    input = {
      "dwarves" => %w(Gimli Oin Gloin),
      "elves"   =>{
        :"full-elves" => :Galadriel,
        "half-elves"  => %w(Arwen Elrond)
      }
    }
    expected = <<EOS
dwarves:
- Gimli
- Oin
- Gloin
elves:
  full-elves:
  - Galadriel
  half-elves:
  - Arwen
  - Elrond
EOS
    assert_equal expected, RubyGolf.pretty_hash(input)
  end


  ##############################################################################
  # Hole 7: RubyGolf.word_letter_sum                                           #
  ##############################################################################

  def test_word_letter_sum_1
    assert_equal 9, RubyGolf.word_letter_sum("CCC")
    assert_equal 9, RubyGolf.word_letter_sum("cCc")
    assert_equal 9, RubyGolf.word_letter_sum("ccc")
  end

  def test_word_letter_sum_2
    assert_equal 10, RubyGolf.word_letter_sum("A B C")
    assert_equal 10, RubyGolf.word_letter_sum("C B A")
    assert_equal 10, RubyGolf.word_letter_sum("B A C")
    assert_equal 10, RubyGolf.word_letter_sum("b a C")
    assert_equal 10, RubyGolf.word_letter_sum("c b a")
    assert_equal 10, RubyGolf.word_letter_sum("A b C")
  end


  def test_word_letter_sum_3
    assert_equal 1720, RubyGolf.word_letter_sum("Consider me As one who loved poetry And persimmons")
    assert_equal 1720, RubyGolf.word_letter_sum("consider me as one who loved poetry and persimmons")
    assert_equal 1720, RubyGolf.word_letter_sum("CONSIDER ME AS ONE WHO LOVED POETRY AND PERSIMMONS")
  end

end
